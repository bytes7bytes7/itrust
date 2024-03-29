import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/entities/entities.dart';
import '../../../../common/domain/services/chat_list_service.dart';
import '../../../../common/domain/services/message_service.dart';
import '../../../../common/domain/services/user_service.dart';
import '../../../../common/domain/value_objects/value_objects.dart';
import '../../../domain/services/chat_service.dart';
import '../../coordinators/chat_coordinator.dart';
import '../../providers/chat_string_provider.dart';

part 'chat_store.g.dart';

@singleton
class ChatStore = _ChatStore with _$ChatStore;

// TODO: update chat title and other things somehow
abstract class _ChatStore extends SyncStore with Store {
  _ChatStore({
    required ChatService chatService,
    required ChatListService chatListService,
    required MessageService messageService,
    required UserService userService,
    required ChatStringProvider chatStringProvider,
    required ChatCoordinator coordinator,
    required EndUserRepository endUserRepository,
    required DateTimeProvider dateTimeProvider,
    required Mapster mapster,
  })  : _chatService = chatService,
        _chatListService = chatListService,
        _messageService = messageService,
        _userService = userService,
        _chatStringProvider = chatStringProvider,
        _coordinator = coordinator,
        _endUserRepository = endUserRepository,
        _dateTimeProvider = dateTimeProvider,
        _mapster = mapster;

  final ChatService _chatService;
  final ChatListService _chatListService;
  final MessageService _messageService;
  final UserService _userService;
  final ChatStringProvider _chatStringProvider;
  final ChatCoordinator _coordinator;
  final EndUserRepository _endUserRepository;
  final DateTimeProvider _dateTimeProvider;
  final Mapster _mapster;
  StreamSubscription? _messageEventSub;

  @observable
  String chatID = '';

  @readonly
  ChatVM? _chat;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @readonly
  List<MessageVM> _messages = const [];

  @readonly
  List<UserMessageVM> _sendingMessages = const [];

  @disposeMethod
  void dispose() {
    _messageEventSub?.cancel();
  }

  @action
  Future<void> loadChat({
    bool refresh = false,
  }) async {
    await perform(
      () async {
        ChatID? id;
        if (chatID.isNotEmpty) {
          id = ChatID.fromString(chatID);
        }

        if (id == null) {
          return;
        }

        try {
          final chat = await _chatListService.getChat(
            id: id,
            cached: !refresh,
          );

          final me = _endUserRepository.me;

          if (me == null) {
            throw Exception('Me is null');
          }

          final lastMessageID = chat.lastMessageID;

          Message? lastMessage;
          if (lastMessageID != null) {
            lastMessage = await _messageService.getMessageByID(
              chatID: chat.id,
              messageID: lastMessageID,
              cached: !refresh,
            );
          }

          if (chat is MonologueChat) {
            _chat = _mapster.map2(
              chat,
              ToChatVM(
                toMessageVM: ToMessageVM(
                  isSentByMe: true,
                  user: me,
                ),
                lastMessage: lastMessage,
              ),
              To<MonologueChatVM>(),
            );
          } else if (chat is DialogueChat) {
            final partner = await _userService.getUserByID(
              id: chat.partnerID,
              cached: !refresh,
            );

            _chat = _mapster.map2(
              chat,
              ToChatVM(
                toMessageVM: ToMessageVM(
                  isSentByMe: true,
                  user: me,
                ),
                lastMessage: lastMessage,
                partner: partner,
              ),
              To<DialogueChatVM>(),
            );
          } else if (chat is GroupChat) {
            User? messageUser;
            if (lastMessage != null) {
              if (lastMessage is UserMessage) {
                if (lastMessage.senderID == me.id) {
                  messageUser = me;
                } else {
                  messageUser = await _userService.getUserByID(
                    id: lastMessage.senderID,
                    cached: !refresh,
                  );
                }
              }
            }

            _chat = _mapster.map2(
              chat,
              ToChatVM(
                toMessageVM: ToMessageVM(
                  isSentByMe: messageUser?.id == me.id,
                  user: messageUser,
                ),
                lastMessage: lastMessage,
              ),
              To<GroupChatVM>(),
            );
          } else {
            throw Exception('Unknown type of chat');
          }

          await loadMessages();
        } catch (e) {
          _error = _chatStringProvider.canNotLoadChatInfo;
        }
      },
      setIsLoading: (_) {},
      removeError: () => _error = '',
    );
  }

  @action
  Future<void> loadMessages() async {
    await perform(
      () async {
        ChatID? id;
        if (chatID.isNotEmpty) {
          id = ChatID.fromString(chatID);
        }

        if (id == null) {
          return;
        }

        try {
          final data = await _messageService.loadMessages(chatID: id);

          _messages = await _parseMessages(data, refresh: false);
        } catch (e) {
          _error = _chatStringProvider.canNotLoadMessages;
        }

        Future.delayed(const Duration(seconds: 1), _listen);
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
      queueKey: 'load messages',
    );
  }

  @action
  Future<void> loadMoreMessages() async {
    await perform(
      () async {
        ChatID? id;
        if (chatID.isNotEmpty) {
          id = ChatID.fromString(chatID);
        }

        if (id == null) {
          return;
        }

        try {
          final lastMessageID = _messages.lastOrNull?.id;

          final data = await _messageService.loadMessages(
            chatID: id,
            lastMessageID: lastMessageID != null
                ? MessageID.fromString(lastMessageID)
                : null,
          );

          // TODO: there can be a problem with caching
          final newMessages = await _parseMessages(data, refresh: false);

          _canLoadMore = false;

          if (newMessages.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _messages = List.of(_messages)..addAll(newMessages);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _chatStringProvider.canNotLoadMessages;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  Future<void> sendMessage({required String text}) async {
    await perform(
      () async {
        ChatID? id;
        if (chatID.isNotEmpty) {
          id = ChatID.fromString(chatID);
        }

        if (id == null) {
          return;
        }

        try {
          final me = _endUserRepository.me;

          if (me == null) {
            throw Exception('Me is null');
          }

          final dt = _dateTimeProvider.now();
          final sendingMessage = _mapster.map2(
            UserMessage(
              id: MessageID.sending(dt),
              chatID: id,
              senderID: me.id,
              sentAt: dt,
              isReadByMe: true,
              text: text,
              // TODO: add media
              media: [],
              // TODO: add burn
              willBeBurntAt: null,
            ),
            ToMessageVM(
              isSentByMe: true,
              user: me,
            ),
            To<UserMessageVM>(),
          );

          final sendingMessages = List.of(_sendingMessages)
            ..add(sendingMessage);
          _sendingMessages = sendingMessages;

          final createdMessage = (await _parseMessages(
            [
              await _messageService.sendMessage(
                chatID: id,
                text: text,
                // TODO: add media & burn msg
                // media: ,
                // willBeBurntAfterSec: ,
              ),
            ],
            refresh: false,
          ))
              .first;

          final messages = List.of(_messages);
          final index = messages.indexWhere((e) => e.id == createdMessage.id);

          if (index == -1) {
            messages.insert(0, createdMessage);
          }

          transaction(() {
            final newSendingMessages = List.of(_sendingMessages)
              ..remove(sendingMessage);
            _sendingMessages = newSendingMessages;
            _messages = _messages;
          });
        } catch (e) {
          _error = _chatStringProvider.canNotLoadMessages;
        }
      },
      setIsLoading: (_) {},
      removeError: () => _error = '',
    );
  }

  @action
  Future<void> _listen() async {
    await perform(
      () async {
        ChatID? id;
        if (chatID.isNotEmpty) {
          id = ChatID.fromString(chatID);
        }

        if (id == null) {
          return;
        }

        try {
          await _messageEventSub?.cancel();

          final stream = await _chatService.listenMessageEvents(chatID: id);

          _messageEventSub = stream.listen((event) async {
            // TODO: add try-catch
            final messages = List.of(_messages);

            final createdMessages =
                await _parseMessages(event.created, refresh: true);

            for (final message in createdMessages) {
              final index = messages.indexWhere((e) => e.id == message.id);

              if (index == -1) {
                messages.insert(0, message);
              }
            }

            for (final id in event.deleted) {
              final index = messages.indexWhere((e) => e.id == id.str);

              if (index != -1) {
                messages.removeAt(index);
              }
            }

            final updatedMessages =
                await _parseMessages(event.updated, refresh: true);

            for (final message in updatedMessages) {
              final index = messages.indexWhere((e) => e.id == message.id);

              if (index != -1) {
                messages[index] = message;
              }
            }

            _messages = messages;
          });
        } catch (e) {
          _error = _chatStringProvider.messageEventError;
        }
      },
      setIsLoading: (_) {},
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  Future<List<MessageVM>> _parseMessages(
    List<Message> data, {
    required bool refresh,
  }) async {
    final me = _endUserRepository.me;

    if (me == null) {
      throw Exception('Me is null');
    }

    final newMessages = <MessageVM>[];
    for (final message in data) {
      if (message is InfoMessage) {
        final messageVM = _mapster.map2(
          message,
          const ToMessageVM(
            isSentByMe: false,
          ),
          To<InfoMessageVM>(),
        );

        newMessages.add(messageVM);
      } else if (message is UserMessage) {
        User? user;
        if (message.senderID == me.id) {
          user = me;
        } else {
          user = await _userService.getUserByID(id: message.senderID);
        }

        final messageVM = _mapster.map2(
          message,
          ToMessageVM(
            isSentByMe: user?.id == me.id,
            user: user,
          ),
          To<UserMessageVM>(),
        );

        newMessages.add(messageVM);
      }
    }

    return newMessages;
  }
}

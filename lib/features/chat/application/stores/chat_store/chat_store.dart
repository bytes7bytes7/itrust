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

abstract class _ChatStore extends SyncStore with Store {
  _ChatStore({
    required ChatService chatService,
    required ChatListService chatListService,
    required MessageService messageService,
    required UserService userService,
    required ChatStringProvider chatStringProvider,
    required ChatCoordinator coordinator,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _chatService = chatService,
        _chatListService = chatListService,
        _messageService = messageService,
        _userService = userService,
        _chatStringProvider = chatStringProvider,
        _coordinator = coordinator,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final ChatService _chatService;
  final ChatListService _chatListService;
  final MessageService _messageService;
  final UserService _userService;
  final ChatStringProvider _chatStringProvider;
  final ChatCoordinator _coordinator;
  final EndUserRepository _endUserRepository;
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

  @computed
  bool get showItemLoading => _messages.isNotEmpty;

  @computed
  bool get showChatInfoLoading => _messages.isEmpty && _isLoading;

  @computed
  bool get showItems => _isLoading || _messages.isNotEmpty;

  @disposeMethod
  void dispose() {
    _messageEventSub?.cancel();
  }

  @action
  void listen() {
    perform(
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

  @action
  void loadChat({
    bool refresh = false,
  }) {
    perform(
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

          loadMessages();
        } catch (e) {
          _error = _chatStringProvider.canNotLoadChatInfo;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void loadMessages() {
    perform(
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
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void loadMoreMessages() {
    perform(
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

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/chat_list_coordinator.dart';

part 'chat_list_store.g.dart';

final _logger = Logger('$ChatListStore');

@singleton
class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore extends SyncStore with Store {
  _ChatListStore({
    required ChatListService chatListService,
    required MessageService messageService,
    required UserService userService,
    required EndUserRepository endUserRepository,
    required ChatListCoordinator coordinator,
    required ChatListStringProvider chatListStringProvider,
    required Mapster mapster,
  })  : _chatListService = chatListService,
        _messageService = messageService,
        _userService = userService,
        _endUserRepository = endUserRepository,
        _coordinator = coordinator,
        _chatListStringProvider = chatListStringProvider,
        _mapster = mapster;

  final ChatListService _chatListService;
  final MessageService _messageService;
  final UserService _userService;
  final EndUserRepository _endUserRepository;
  final ChatListCoordinator _coordinator;
  final ChatListStringProvider _chatListStringProvider;
  final Mapster _mapster;
  StreamSubscription? _chatEventSub;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<ChatVM> _chats = const [];

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @disposeMethod
  void dispose() {
    _chatEventSub?.cancel();
  }

  @action
  void listen() {
    _logger.fine('Listen: start');

    perform(
      () async {
        try {
          await _chatEventSub?.cancel();

          final stream = await _chatListService.listenChatEvents();

          _chatEventSub = stream.listen((event) async {
            _logger.fine('Listen: new event');

            // TODO: add try-catch
            final chats = List.of(_chats);

            final createdChats =
                await _parseChats(event.created, refresh: true);

            for (final chat in createdChats) {
              _logger.fine('Listen: created chats');

              final index = chats.indexWhere((e) => e.id == chat.id);

              if (index == -1) {
                chats.insert(0, chat);
              }
            }

            for (final id in event.deleted) {
              _logger.fine('Listen: deleted chats');

              final index = chats.indexWhere((e) => e.id == id.str);

              if (index != -1) {
                chats.removeAt(index);
              }
            }

            final updatedChats =
                await _parseChats(event.updated, refresh: true);

            for (final chat in updatedChats) {
              _logger.fine('Listen: updated chats');

              final index = chats.indexWhere((e) => e.id == chat.id);

              if (index != -1) {
                chats[index] = chat;
              }
            }

            for (final chatMessageID in event.lastMessageID.entries) {
              _logger.fine('Listen: chat messages');

              final chatID = chatMessageID.key;

              final index = chats.indexWhere((e) => e.id == chatID.str);

              final chat = (await _parseChats(
                [
                  await _chatListService.getChat(
                    id: chatID,
                    cached: false,
                  )
                ],
                refresh: true,
              ))
                  .first;

              final chatDT = chat.lastMessage?.map(
                    info: (e) => e.sentAtDT,
                    user: (e) => e.modifiedAtDT ?? e.sentAtDT,
                  ) ??
                  chat.createdAt;

              if (index != -1) {
                _logger.fine('Listen: chat messages: remove old chat');

                // remove old chat instance
                chats.removeAt(index);
              }

              var pasted = false;

              for (var i = 0; i < chats.length; i++) {
                final oldChat = chats[i];

                final oldChatDT = oldChat.lastMessage?.map(
                      info: (e) => e.sentAtDT,
                      user: (e) => e.modifiedAtDT ?? e.sentAtDT,
                    ) ??
                    oldChat.createdAt;

                if (oldChatDT.isBefore(chatDT)) {
                  chats.insert(i, chat);
                  pasted = true;
                  break;
                }
              }

              if (!pasted) {
                if (index != -1) {
                  chats.add(chat);
                }

                _canLoadMore = true;
              }
            }

            _logger.fine('Listen: update chats');

            _chats = chats;
          });
        } catch (e) {
          _error = _chatListStringProvider.chatEventError;
        }
      },
      setIsLoading: (_) {},
      removeError: () => _error = '',
    );
  }

  @action
  void loadChats({
    bool refresh = false,
  }) {
    _logger.fine('Load: start');

    perform(
      () async {
        try {
          final data = await _chatListService.loadChats();

          _logger.fine('Load: update chats');
          _chats = await _parseChats(data, refresh: refresh);
        } catch (e) {
          _error = _chatListStringProvider.canNotLoadChats;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void loadMoreChats() {
    _logger.fine('Load more: start');

    perform(
      () async {
        try {
          final lastChatID = _chats.lastOrNull?.id;

          final data = await _chatListService.loadChats(
            lastChatID:
                lastChatID != null ? ChatID.fromString(lastChatID) : null,
          );

          // TODO: there can be a problem with caching
          final newChats = await _parseChats(data, refresh: false);

          _canLoadMore = false;

          if (newChats.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _logger.fine('Load more: update chats');
          _chats = List.of(_chats)..addAll(newChats);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _chatListStringProvider.canNotLoadChats;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    loadChats(refresh: true);
  }

  @action
  void onChatCardPressed({required String chatID}) {
    _coordinator.onChatPressed(chatID: chatID);
  }

  void onCreateMonologueBtnPressed() {
    _coordinator.onCreateMonologueBtnPressed();
  }

  void onCreateDialogueBtnPressed() {
    _coordinator.onCreateDialogueBtnPressed();
  }

  void onCreateGroupBtnPressed() {
    _coordinator.onCreateGroupBtnPressed();
  }

  Future<List<ChatVM>> _parseChats(
    List<Chat> data, {
    required bool refresh,
  }) async {
    final me = _endUserRepository.me;

    if (me == null) {
      throw Exception('Me is null');
    }

    final newChats = <ChatVM>[];
    for (final chat in data) {
      final lastMessageID = chat.lastMessageID;

      Message? lastMessage;
      if (lastMessageID != null) {
        lastMessage = await _messageService.getMessageByID(
          chatID: chat.id,
          messageID: lastMessageID,
          cached: !refresh,
        );
      }

      ChatVM? chatVM;
      if (chat is MonologueChat) {
        chatVM = _mapster.map2(
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

        User? messageUser;
        if (lastMessage != null) {
          if (lastMessage is UserMessage) {
            if (lastMessage.senderID == me.id) {
              messageUser = me;
            } else {
              messageUser = partner;
            }
          }
        }

        chatVM = _mapster.map2(
          chat,
          ToChatVM(
            toMessageVM: ToMessageVM(
              isSentByMe: messageUser?.id == me.id,
              user: messageUser,
            ),
            partner: partner,
            lastMessage: lastMessage,
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

        chatVM = _mapster.map2(
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
      }

      if (chatVM != null) {
        newChats.add(chatVM);
      }
    }

    return newChats;
  }
}

import 'dart:async';
import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/chat_list_coordinator.dart';

part 'chat_list_store.g.dart';

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
  final _messages = HashMap<String, Message>();

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

  @computed
  bool get showAppBarLoading => _chats.isEmpty && _isLoading;

  @disposeMethod
  void dispose() {
    _chatEventSub?.cancel();
  }

  @action
  void listen() {
    perform(
      () async {
        try {
          final stream = await _chatListService.listenChatEvents();

          _chatEventSub = stream.listen((event) async {
            final chats = List.of(_chats);

            final createdChats =
                await _parseChats(event.created, refresh: true);
            chats.insertAll(0, createdChats);

            for (final id in event.deleted) {
              final index = chats.indexWhere((e) => e.id == id.str);

              if (index != -1) {
                final chat = chats[index];

                final lastMessageID = chat.lastMessage?.id;
                if (lastMessageID != null) {
                  _messages.remove(lastMessageID);
                }

                chats.removeAt(index);
              }
            }

            final updatedChats =
                await _parseChats(event.updated, refresh: true);

            for (final chat in updatedChats) {
              final index = chats.indexWhere((e) => e.id == chat.id);

              if (index != -1) {
                final oldChat = chats[index];

                final lastMessage = _messages[chat.lastMessage?.id];

                if (chat.lastMessage?.id == oldChat.lastMessage?.id) {
                  chats[index] = chat;
                } else {
                  // remove old chat
                  chats.removeAt(index);

                  var pasted = false;

                  if (lastMessage == null) {
                    pasted = true;
                  }

                  if (!pasted) {
                    for (var i = 0; i < chats.length; i++) {
                      final otherChat = chats[i];

                      final otherLastMessage =
                          _messages[otherChat.lastMessage?.id];

                      if (otherLastMessage == null) {
                        chats.insert(i, chat);
                        pasted = true;
                        break;
                      }

                      if (lastMessage == null) {
                        // this should never be true, because there is other
                        // check for it above
                        break;
                      }

                      final dateTime = lastMessage.map(
                        info: (e) => e.sentAt,
                        user: (e) => e.modifiedAt ?? e.sentAt,
                      );

                      final otherDateTime = otherLastMessage.map(
                        info: (e) => e.sentAt,
                        user: (e) => e.modifiedAt ?? e.sentAt,
                      );

                      if (otherDateTime.isAfter(dateTime)) {
                        chats.insert(i, chat);
                        pasted = true;
                        break;
                      }
                    }
                  }

                  if (!pasted) {
                    chats.add(chat);
                  }
                }
              } else {
                final lastMessage = _messages[chat.lastMessage?.id];

                if (lastMessage != null) {
                  for (var i = 0; i < chats.length; i++) {
                    final otherChat = chats[i];

                    final otherLastMessage =
                        _messages[otherChat.lastMessage?.id];

                    if (otherLastMessage == null) {
                      chats.insert(i, chat);
                      break;
                    }

                    final dateTime = lastMessage.map(
                      info: (e) => e.sentAt,
                      user: (e) => e.modifiedAt ?? e.sentAt,
                    );

                    final otherDateTime = otherLastMessage.map(
                      info: (e) => e.sentAt,
                      user: (e) => e.modifiedAt ?? e.sentAt,
                    );

                    if (otherDateTime.isAfter(dateTime)) {
                      chats.insert(i, chat);
                      break;
                    }
                  }
                }
              }
            }

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
    perform(
      () async {
        try {
          final data = await _chatListService.loadChats();

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
          lastMessageID,
          cached: !refresh,
        );

        if (lastMessage != null) {
          _messages[lastMessage.id.str] = lastMessage;
        }
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

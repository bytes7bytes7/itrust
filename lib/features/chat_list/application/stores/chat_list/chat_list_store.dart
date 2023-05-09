import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';

part 'chat_list_store.g.dart';

@singleton
class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore extends SyncStore with Store {
  _ChatListStore({
    required ChatListService chatListService,
    required MessageService messageService,
    required UserService userService,
    required EndUserRepository endUserRepository,
    required ChatListStringProvider chatListStringProvider,
    required Mapster mapster,
  })  : _chatListService = chatListService,
        _messageService = messageService,
        _userService = userService,
        _endUserRepository = endUserRepository,
        _chatListStringProvider = chatListStringProvider,
        _mapster = mapster;

  final ChatListService _chatListService;
  final MessageService _messageService;
  final UserService _userService;
  final EndUserRepository _endUserRepository;
  final ChatListStringProvider _chatListStringProvider;
  final Mapster _mapster;

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
    // TODO: implement
    // _chatListService.onChatSelected(chat.id);
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

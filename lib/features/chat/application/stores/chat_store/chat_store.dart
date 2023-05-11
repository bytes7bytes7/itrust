import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/entities/entities.dart';
import '../../../../common/domain/services/message_service.dart';
import '../../../../common/domain/services/user_service.dart';
import '../../../../common/domain/value_objects/value_objects.dart';
import '../../../domain/services/chat_service.dart';
import '../../coordinators/chat_coordinator.dart';
import '../../providers/chat_string_provider.dart';

part 'chat_store.g.dart';

@injectable
class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore extends SyncStore with Store {
  _ChatStore({
    required ChatService chatService,
    required MessageService messageService,
    required UserService userService,
    required ChatStringProvider chatStringProvider,
    required ChatCoordinator coordinator,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _chatService = chatService,
        _messageService = messageService,
        _userService = userService,
        _chatStringProvider = chatStringProvider,
        _coordinator = coordinator,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final ChatService _chatService;
  final MessageService _messageService;
  final UserService _userService;
  final ChatStringProvider _chatStringProvider;
  final ChatCoordinator _coordinator;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  @observable
  String chatID = '';

  @readonly
  ChatVM? _chat;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  bool _isLoadingMore = false;

  @readonly
  List<MessageVM> _messages = const [];

  @readonly
  bool _hasMoreMessages = true;

  @readonly
  Map<MessageID, int> _messageKeys = {};

  @computed
  bool get showItemLoading => _messages.isNotEmpty && _hasMoreMessages;

  @computed
  bool get showChatInfoLoading => _messages.isEmpty && _isLoading;

  @computed
  bool get showItems => _isLoading || _messages.isNotEmpty;

  @action
  void loadChat({
    bool refresh = false,
  }) {
    late final ChatID id;
    if (chatID.isNotEmpty) {
      id = ChatID.fromString(chatID);
    }

    perform(
      () async {
        try {
          final chat = await _chatService.getChat(
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
              lastMessageID,
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
        } catch (e) {
          _error = _chatStringProvider.canNotLoadChatInfo;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }
}

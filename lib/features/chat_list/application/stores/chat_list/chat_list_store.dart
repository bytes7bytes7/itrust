import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';

part 'chat_list_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatListStore');

@singleton
class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore extends SyncStore with Store {
  _ChatListStore({
    required ChatListService chatListService,
  }) : _chatListService = chatListService;

  final ChatListService _chatListService;
  final int _limit = _defaultLimit;
  var _isInitialized = false;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  bool _isLoadingMore = false;

  @readonly
  List<Chat> _chats = const [];

  @readonly
  bool _hasMoreChats = true;

  @readonly
  int _page = 0;

  @computed
  bool get showItemLoading => _chats.isNotEmpty && _hasMoreChats;

  @computed
  bool get showAppBarLoading => _chats.isEmpty && _isLoading;

  @computed
  bool get showItems => _isLoading || _chats.isNotEmpty;

  void init() {
    if (!_isInitialized) {
      load();
      _isInitialized = true;
    }
  }

  @action
  void load() {
    if (_isLoading || _isLoadingMore) {
      return;
    }

    if (_hasMoreChats) {
      _isLoadingMore = true;

      if (_page == 0) {
        // TODO: implement
      }

      _logger.fine('try to load data');

      perform(
        () async {
          _chats = await _chatListService.load(
            limit: _limit,
            offset: _page++ * _limit,
          );
        },
        setIsLoading: (v) => _isLoading = v,
        removeError: () => _error = '',
      );
      // TODO: implement

      _isLoadingMore = false;
    }
  }

  @action
  void refresh() {
    // TODO: implement
    perform(
      () {
        _page = 0;
        _chats = [];
        _hasMoreChats = true;
        _chatListService.load(limit: _limit, offset: 0);
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void onChatCardPressed(Chat chat) {
    // TODO: implement
    // _chatListService.onChatSelected(chat.id);
  }
}

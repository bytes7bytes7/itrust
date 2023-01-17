import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';

part 'chat_list_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatListStore');

@injectable
class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore extends SyncStore with Store {
  _ChatListStore({
    required ChatListService chatListService,
  }) : _chatListService = chatListService;

  final ChatListService _chatListService;
  final int _limit = _defaultLimit;

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
      setError: (v) => _error = v,
    );
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
        () {},
        setIsLoading: (v) => _isLoading = v,
        setError: (v) => _error = v,
      );
      // TODO: implement

      _isLoadingMore = false;
    }
  }

  @action
  void onChatCardPressed(Chat chat) {
    // TODO: implement
    // _chatListService.onChatSelected(chat.id);
  }
}

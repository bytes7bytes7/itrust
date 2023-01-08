import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/domain/domain.dart';
import '../../../../common/domain/persistence/search_repository.dart';
import '../../../../common/domain/service/chat_list_service.dart';
import '../../../../common/domain/service/chats_event.dart';

part 'chat_list_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatListStore');

@singleton
class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore with Store, Loadable, Errorable {
  _ChatListStore({
    required ChatListService chatListService,
    required SearchRepository<Chat> searchRepository,
  })  : _chatListService = chatListService,
        _searchRepository = searchRepository {
    _chatListSub = _chatListService.chatsEvents.listen((event) {
      if (event is UpdateChatsEvent) {
        if (_suggestions.isNotEmpty) {
          final result = List<Chat>.from(_suggestions);

          for (final chat in event.chats) {
            final oldIndex = result.indexWhere((e) => e.id == chat.id);
            if (oldIndex == -1) {
              result.add(chat);
            } else {
              final updateChatDT = chat.lastMessage?.map(
                info: (m) => m.sentAt,
                user: (m) => m.modifiedAt ?? m.sentAt,
              );

              if (updateChatDT == null) {
                result[oldIndex] = chat;
              } else {
                result.removeAt(oldIndex);

                for (var i = 0; i < result.length; i++) {
                  final oldChat = result[i];

                  final oldChatDT = oldChat.lastMessage?.map(
                    info: (m) => m.sentAt,
                    user: (m) => m.modifiedAt ?? m.sentAt,
                  );

                  if (oldChatDT != null && oldChatDT.isBefore(updateChatDT)) {
                    result.insert(i, chat);
                    break;
                  }
                }

                result.add(chat);
              }
            }
          }

          _suggestions = result;
        }
      } else if (event is DeleteChatsEvent) {
        final result = List<Chat>.from(_suggestions);

        for (final e in event.chatIDs) {
          result.removeWhere((chat) => chat.id == e);
        }

        _suggestions = result;
      }
    });
  }

  final ChatListService _chatListService;
  final SearchRepository<Chat> _searchRepository;
  final int _limit = _defaultLimit;
  StreamSubscription? _chatListSub;

  @disposeMethod
  void dispose() {
    _chatListSub?.cancel();
  }

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @readonly
  bool _isLoadingMore = false;

  @readonly
  String _query = '';

  @readonly
  Chat? _selected;

  @readonly
  List<Chat> _suggestions = const [];

  @readonly
  bool _hasMoreSuggestions = true;

  @readonly
  int _page = 0;

  @computed
  bool get showItemLoading => _suggestions.isNotEmpty && _hasMoreSuggestions;

  @computed
  bool get showAppBarLoading => _suggestions.isEmpty && _isLoading;

  @computed
  bool get showItems => _isLoading || _suggestions.isNotEmpty;

  @action
  Future<void> refresh() async {
    await _wrap(() async {
      await _loadData(page: 0);
    });
  }

  @action
  Future<void> load() async {
    if (_isLoading || _isLoadingMore) {
      return;
    }

    _error = null;

    if (_hasMoreSuggestions) {
      _isLoadingMore = true;

      if (_page == 0) {
        _wrapBefore();
      }

      _logger.fine('try to load data');

      await _loadData(page: _page);

      _isLoadingMore = false;
      _wrapAfter();
    }
  }

  @action
  Future<void> setQuery(String query) async {
    if (_query == query) {
      return;
    }

    _logger.fine('update query');

    await _wrap(() async {
      await _loadData(page: 0, query: query);
    });
  }

  @action
  Future<void> selectItem(Chat item) async {
    _selected = item;
  }

  @action
  void onChatCardPressed(Chat chat) {
    // TODO: implement
    // _chatListService.onChatSelected(chat.id);
  }

  Future<void> _loadData({
    required int page,
    String? query,
  }) async {
    try {
      final data = await _searchRepository.load(
        limit: _limit,
        offset: _limit * _page,
        query: query ?? _query,
      );

      late List<Chat> suggestions;
      if (page == 0) {
        suggestions = data;
      } else {
        suggestions = List.from(_suggestions)..addAll(data);
      }

      Chat? selected;
      if (_selected == null) {
        // TODO: implement
        selected = suggestions.firstWhereOrNull(
          (e) => e.map(
            monologue: (chat) {
              return chat.title.toLowerCase().contains(query ?? _query);
            },
            dialogue: (chat) {
              // TODO: get user info
              return true;
            },
            group: (chat) {
              return chat.title.toLowerCase().contains(query ?? _query);
            },
          ),
        );
      }

      _suggestions = List.unmodifiable(suggestions);
      _selected = selected;
      _hasMoreSuggestions = data.isNotEmpty && data.length == _limit;
      if (query != null) {
        _query = query;
      }
      _page = page + 1;
    } catch (e) {
      _error = e;
    }
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _wrapBefore();
    await callback();
    _wrapAfter();
  }

  void _wrapBefore() {
    _isLoading = true;
    _error = null;
  }

  void _wrapAfter() {
    _isLoading = false;
  }
}

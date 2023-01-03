import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/persistence/search_repository.dart';
import '../../../../common/domain/domain.dart';

part 'chat_list_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatListStore');

@singleton
class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore with Store, Loadable, Errorable {
  _ChatListStore({
    required SearchRepository<Chat> searchRepository,
  }) : _searchRepository = searchRepository;

  final SearchRepository<Chat> _searchRepository;
  final int _limit = _defaultLimit;

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
        selected = suggestions.firstWhereOrNull(
          (e) => e.title.toLowerCase().contains(query ?? _query),
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

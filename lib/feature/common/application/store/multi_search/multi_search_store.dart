import 'dart:async';

import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/persistence/search_repository.dart';

part 'multi_search_store.g.dart';

const _defaultLimit = 10;

typedef IsMultiSelectedAlgorithm<T> = bool Function(T item, String query);

class MultiSearchStore<T> = _MultiSearchStore<T> with _$MultiSearchStore<T>;

abstract class _MultiSearchStore<T> with Store, Loadable, Errorable {
  _MultiSearchStore({
    required SearchRepository<T> searchRepository,
    required IsMultiSelectedAlgorithm<T> isSelectedAlgorithm,
    int limit = _defaultLimit,
  })  : _searchRepository = searchRepository,
        _isSelectedAlgorithm = isSelectedAlgorithm,
        _limit = limit;

  final SearchRepository<T> _searchRepository;
  final IsMultiSelectedAlgorithm<T> _isSelectedAlgorithm;
  final int _limit;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @readonly
  String _query = '';

  @readonly
  List<T> _selected = const [];

  @readonly
  List<T> _suggestions = const [];

  @readonly
  bool _hasMoreSuggestions = true;

  @readonly
  int _page = 0;

  @action
  Future<void> load() async {
    if (_hasMoreSuggestions) {
      if (_page == 0) {
        _wrapBefore();
      }

      await _loadData(page: _page);

      _wrapAfter();
    }
  }

  @action
  Future<void> setQuery(String query) async {
    if (_query == query) {
      return;
    }

    await _wrap(() async {
      await _loadData(page: 0, query: query);
    });
  }

  @action
  Future<void> selectItem(T item) async {
    _selected = List.unmodifiable(List.from(_selected)..add(item));
  }

  @action
  Future<void> unselectItem(T item) async {
    _selected = List.unmodifiable(List.from(_selected)..remove(item));
  }

  Future<void> _loadData({
    required int page,
    String? query,
  }) async {
    try {
      final data = await _searchRepository.load(
        limit: _limit,
        offset: _limit * page,
        query: query ?? _query,
      );

      late List<T> suggestions;
      if (page == 0) {
        suggestions = data;
      } else {
        suggestions = List.from(_suggestions)..addAll(data);
      }

      final selected = List<T>.from(_selected)
        ..addAll(
          suggestions.where((e) => _isSelectedAlgorithm(e, query ?? _query)),
        );

      _suggestions = List.unmodifiable(suggestions);
      _selected = List.unmodifiable(selected);
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

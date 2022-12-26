import 'dart:async';

import 'package:collection/collection.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/persistence/search_repository.dart';

part 'search_store.g.dart';

const _defaultLimit = 10;

typedef IsSelectedAlgorithm<T> = bool Function(T);

class SearchStore<T> = _SearchStore<T> with _$SearchStore<T>;

abstract class _SearchStore<T> with Store, Loadable, Errorable {
  _SearchStore({
    required SearchRepository<T> searchRepository,
    required IsSelectedAlgorithm<T> isSelectedAlgorithm,
    int limit = _defaultLimit,
  })  : _searchRepository = searchRepository,
        _isSelectedAlgorithm = isSelectedAlgorithm,
        _limit = limit;

  final SearchRepository<T> _searchRepository;
  final IsSelectedAlgorithm<T> _isSelectedAlgorithm;
  final int _limit;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @readonly
  String _query = '';

  @readonly
  T? _selected;

  @readonly
  List<T> _suggestions = const [];

  @readonly
  bool _hasMoreSuggestions = true;

  @readonly
  int _page = 0;

  @action
  Future<void> load() async {
    _error = null;

    if (_hasMoreSuggestions) {
      if (_page == 0) {
        _isLoading = true;
      }

      await _loadData(page: _page);

      _isLoading = false;
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
  Future<void> select(T item) async {
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

      late List<T> suggestions;
      if (page == 0) {
        suggestions = data;
      } else {
        suggestions = List.from(_suggestions)..addAll(data);
      }

      T? selected;
      if (_selected == null) {
        selected = suggestions.firstWhereOrNull(_isSelectedAlgorithm);
      }

      _suggestions = suggestions;
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
    _isLoading = true;
    _error = null;

    await callback();

    _isLoading = false;
  }
}

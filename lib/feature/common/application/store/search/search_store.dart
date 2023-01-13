import 'dart:async';

import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../domain/persistence/search_repository.dart';

part 'search_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$SearchStore');

typedef IsSelectedAlgorithm<T> = bool Function(T item, String query);

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
  String _error = '';

  @readonly
  bool _isLoadingMore = false;

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

    _error = '';

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
  Future<void> selectItem(T item) async {
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
        selected = suggestions.firstWhereOrNull(
          (e) => _isSelectedAlgorithm(e, query ?? _query),
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
      _error = 'Some error';
    }
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _wrapBefore();
    await callback();
    _wrapAfter();
  }

  void _wrapBefore() {
    _isLoading = true;
    _error = '';
  }

  void _wrapAfter() {
    _isLoading = false;
  }
}

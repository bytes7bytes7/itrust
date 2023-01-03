import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/persistence/search_repository.dart';
import '../../../../common/domain/domain.dart';

part 'chat_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatStore');

typedef IsSelectedAlgorithm<T> = bool Function(T item, String query);

@Singleton()
class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore with Store, Loadable, Errorable {
  _ChatStore({
    required SearchRepository<Message> searchRepository,
    required IsSelectedAlgorithm<Message> isSelectedAlgorithm,
    int limit = _defaultLimit,
  })  : _searchRepository = searchRepository,
        _isSelectedAlgorithm = isSelectedAlgorithm,
        _limit = limit;

  final SearchRepository<Message> _searchRepository;
  final IsSelectedAlgorithm<Message> _isSelectedAlgorithm;
  final int _limit;

  @readonly
  Chat? _chat;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @readonly
  bool _isLoadingMore = false;

  @readonly
  String _query = '';

  @readonly
  Message? _selected;

  @readonly
  List<Message> _suggestions = const [];

  @readonly
  bool _hasMoreSuggestions = true;

  @readonly
  int _page = 0;

  @readonly
  Map<MessageID, int> _messageKeys = {};

  @computed
  bool get showItemLoading => _suggestions.isNotEmpty && _hasMoreSuggestions;

  @computed
  bool get showAppBarLoading => _suggestions.isEmpty && _isLoading;

  @computed
  bool get showItems => _isLoading || _suggestions.isNotEmpty;

  @action
  void setChat(Chat newChat) {
    _chat = newChat;
    _isLoading = false;
    _error = null;
    _isLoadingMore = false;
    _query = '';
    _selected = null;
    _suggestions = const [];
    _hasMoreSuggestions = true;
    _page = 0;
    _messageKeys = const {};
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
  Future<void> selectItem(Message item) async {
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

      late List<Message> suggestions;
      late Map<MessageID, int> messagesKeys;
      if (page == 0) {
        suggestions = data;
        messagesKeys = Map.fromEntries(
          data.mapIndexed((index, e) {
            return MapEntry(e.id, index);
          }),
        );
      } else {
        suggestions = List.from(_suggestions)..addAll(data);
        messagesKeys = Map.from(_messageKeys)
          ..addAll(
            Map.fromEntries(
              data.mapIndexed((index, e) {
                return MapEntry(e.id, index);
              }),
            ),
          );
      }

      Message? selected;
      if (_selected == null) {
        selected = suggestions.firstWhereOrNull(
          (e) => _isSelectedAlgorithm(e, query ?? _query),
        );
      }

      _suggestions = List.unmodifiable(suggestions);
      _messageKeys = messagesKeys;
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

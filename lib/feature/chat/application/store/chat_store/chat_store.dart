import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/domain/domain.dart';
import '../../../../common/domain/persistence/search_repository.dart';
import '../../service/chat_interaction_service.dart';

part 'chat_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatStore');

@singleton
class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore with Store, Loadable, Errorable {
  _ChatStore({
    required ChatInteractionService chatInteractionService,
    required SearchRepository<Message> searchRepository,
  })  : _chatInteractionService = chatInteractionService,
        _searchRepository = searchRepository;

  final ChatInteractionService _chatInteractionService;
  final SearchRepository<Message> _searchRepository;
  final int _limit = _defaultLimit;

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
  Future<void> loadChat(ChatID chatID) async {
    _reset();

    await _wrap(() async {
      try {
        // TODO: implement
        final chat = Chat.monologue(
          id: chatID,
          unreadAmount: 0,
          title: 'title $chatID',
        );

        _chat = chat;
      } catch (e) {
        _error = e;
      }
    });

    await load();
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

  @action
  void onBackPressed() {
    _reset();

    _chatInteractionService.onBackPressed();
  }

  void _reset() {
    _isLoading = false;
    _error = null;
    _isLoadingMore = false;
    _query = '';
    _selected = null;
    _suggestions = const [];
    _hasMoreSuggestions = true;
    _page = 0;
    _messageKeys = const {};
    _chat = null;
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
          (e) => e.map(
            info: (_) => false,
            user: (e) => e.text.toLowerCase().contains(query ?? _query),
          ),
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

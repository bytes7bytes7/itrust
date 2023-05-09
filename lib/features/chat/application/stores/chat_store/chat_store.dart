import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/chat_service.dart';

part 'chat_store.g.dart';

const _defaultLimit = 10;
final _logger = Logger('$ChatStore');

@injectable
class ChatStore = _ChatStore with _$ChatStore;

abstract class _ChatStore extends SyncStore with Store {
  _ChatStore({
    required ChatService chatService,
  }) : _chatService = chatService;

  final ChatService _chatService;
  final int _limit = _defaultLimit;

  @readonly
  Chat? _chat;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  bool _isLoadingMore = false;

  @readonly
  List<Message> _messages = const [];

  @readonly
  bool _hasMoreMessages = true;

  @readonly
  int _page = 0;

  @readonly
  Map<MessageID, int> _messageKeys = {};

  @computed
  bool get showItemLoading => _messages.isNotEmpty && _hasMoreMessages;

  @computed
  bool get showAppBarLoading => _messages.isEmpty && _isLoading;

  @computed
  bool get showItems => _isLoading || _messages.isNotEmpty;

  @action
  void loadChat(ChatID chatID) {
    _reset();

    perform(
      () async {
        try {
          // TODO: implement
          final chat = Chat.monologue(
            id: chatID,
            title: 'title $chatID',
          );

          _chat = chat;
        } catch (e) {
          _error = 'Some error';
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );

    load();
  }

  @action
  void load() {
    if (_isLoading || _isLoadingMore) {
      return;
    }

    _error = '';

    if (_hasMoreMessages) {
      _isLoadingMore = true;

      if (_page == 0) {
        // TODO: implement
      }

      _logger.fine('try to load data');

      perform(
        () async {
          await _loadData(page: _page);
          _isLoadingMore = false;
        },
        setIsLoading: (v) => _isLoading = v,
        removeError: () => _error = '',
      );
    }
  }

  @action
  void onBackPressed() {
    _reset();

    // TODO: implement
    // _chatService.onLeaveChat();
  }

  void _reset() {
    _isLoading = false;
    _error = '';
    _isLoadingMore = false;
    _messages = const [];
    _hasMoreMessages = true;
    _page = 0;
    _messageKeys = const {};
    _chat = null;
  }

  Future<void> _loadData({
    required int page,
  }) async {
    try {
      final data = await _chatService.load(
        limit: _limit,
        offset: _limit * _page,
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
        suggestions = List.from(_messages)..addAll(data);
        messagesKeys = Map.from(_messageKeys)
          ..addAll(
            Map.fromEntries(
              data.mapIndexed((index, e) {
                return MapEntry(e.id, index);
              }),
            ),
          );
      }

      _messages = List.unmodifiable(suggestions);
      _messageKeys = messagesKeys;
      _hasMoreMessages = data.isNotEmpty && data.length == _limit;
      _page = page + 1;
    } catch (e) {
      _error = 'Some error';
    }
  }
}

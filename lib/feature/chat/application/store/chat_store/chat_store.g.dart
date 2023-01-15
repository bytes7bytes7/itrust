// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChatStore on _ChatStore, Store {
  Computed<bool>? _$showItemLoadingComputed;

  @override
  bool get showItemLoading =>
      (_$showItemLoadingComputed ??= Computed<bool>(() => super.showItemLoading,
              name: '_ChatStore.showItemLoading'))
          .value;
  Computed<bool>? _$showAppBarLoadingComputed;

  @override
  bool get showAppBarLoading => (_$showAppBarLoadingComputed ??= Computed<bool>(
          () => super.showAppBarLoading,
          name: '_ChatStore.showAppBarLoading'))
      .value;
  Computed<bool>? _$showItemsComputed;

  @override
  bool get showItems => (_$showItemsComputed ??=
          Computed<bool>(() => super.showItems, name: '_ChatStore.showItems'))
      .value;

  late final _$_chatAtom = Atom(name: '_ChatStore._chat', context: context);

  Chat? get chat {
    _$_chatAtom.reportRead();
    return super._chat;
  }

  @override
  Chat? get _chat => chat;

  @override
  set _chat(Chat? value) {
    _$_chatAtom.reportWrite(value, super._chat, () {
      super._chat = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: '_ChatStore._isLoading', context: context);

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_errorAtom = Atom(name: '_ChatStore._error', context: context);

  String get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  String get _error => error;

  @override
  set _error(String value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_isLoadingMoreAtom =
      Atom(name: '_ChatStore._isLoadingMore', context: context);

  bool get isLoadingMore {
    _$_isLoadingMoreAtom.reportRead();
    return super._isLoadingMore;
  }

  @override
  bool get _isLoadingMore => isLoadingMore;

  @override
  set _isLoadingMore(bool value) {
    _$_isLoadingMoreAtom.reportWrite(value, super._isLoadingMore, () {
      super._isLoadingMore = value;
    });
  }

  late final _$_messagesAtom =
      Atom(name: '_ChatStore._messages', context: context);

  List<Message> get messages {
    _$_messagesAtom.reportRead();
    return super._messages;
  }

  @override
  List<Message> get _messages => messages;

  @override
  set _messages(List<Message> value) {
    _$_messagesAtom.reportWrite(value, super._messages, () {
      super._messages = value;
    });
  }

  late final _$_hasMoreMessagesAtom =
      Atom(name: '_ChatStore._hasMoreMessages', context: context);

  bool get hasMoreMessages {
    _$_hasMoreMessagesAtom.reportRead();
    return super._hasMoreMessages;
  }

  @override
  bool get _hasMoreMessages => hasMoreMessages;

  @override
  set _hasMoreMessages(bool value) {
    _$_hasMoreMessagesAtom.reportWrite(value, super._hasMoreMessages, () {
      super._hasMoreMessages = value;
    });
  }

  late final _$_pageAtom = Atom(name: '_ChatStore._page', context: context);

  int get page {
    _$_pageAtom.reportRead();
    return super._page;
  }

  @override
  int get _page => page;

  @override
  set _page(int value) {
    _$_pageAtom.reportWrite(value, super._page, () {
      super._page = value;
    });
  }

  late final _$_messageKeysAtom =
      Atom(name: '_ChatStore._messageKeys', context: context);

  Map<MessageID, int> get messageKeys {
    _$_messageKeysAtom.reportRead();
    return super._messageKeys;
  }

  @override
  Map<MessageID, int> get _messageKeys => messageKeys;

  @override
  set _messageKeys(Map<MessageID, int> value) {
    _$_messageKeysAtom.reportWrite(value, super._messageKeys, () {
      super._messageKeys = value;
    });
  }

  late final _$loadChatAsyncAction =
      AsyncAction('_ChatStore.loadChat', context: context);

  @override
  Future<void> loadChat(ChatID chatID) {
    return _$loadChatAsyncAction.run(() => super.loadChat(chatID));
  }

  late final _$loadAsyncAction =
      AsyncAction('_ChatStore.load', context: context);

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  late final _$_ChatStoreActionController =
      ActionController(name: '_ChatStore', context: context);

  @override
  void onBackPressed() {
    final _$actionInfo = _$_ChatStoreActionController.startAction(
        name: '_ChatStore.onBackPressed');
    try {
      return super.onBackPressed();
    } finally {
      _$_ChatStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showItemLoading: ${showItemLoading},
showAppBarLoading: ${showAppBarLoading},
showItems: ${showItems}
    ''';
  }
}

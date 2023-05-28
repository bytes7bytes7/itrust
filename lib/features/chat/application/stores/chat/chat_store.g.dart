// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChatStore on _ChatStore, Store {
  late final _$chatIDAtom = Atom(name: '_ChatStore.chatID', context: context);

  @override
  String get chatID {
    _$chatIDAtom.reportRead();
    return super.chatID;
  }

  @override
  set chatID(String value) {
    _$chatIDAtom.reportWrite(value, super.chatID, () {
      super.chatID = value;
    });
  }

  late final _$_chatAtom = Atom(name: '_ChatStore._chat', context: context);

  ChatVM? get chat {
    _$_chatAtom.reportRead();
    return super._chat;
  }

  @override
  ChatVM? get _chat => chat;

  @override
  set _chat(ChatVM? value) {
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

  late final _$_canLoadMoreAtom =
      Atom(name: '_ChatStore._canLoadMore', context: context);

  bool get canLoadMore {
    _$_canLoadMoreAtom.reportRead();
    return super._canLoadMore;
  }

  @override
  bool get _canLoadMore => canLoadMore;

  @override
  set _canLoadMore(bool value) {
    _$_canLoadMoreAtom.reportWrite(value, super._canLoadMore, () {
      super._canLoadMore = value;
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

  List<MessageVM> get messages {
    _$_messagesAtom.reportRead();
    return super._messages;
  }

  @override
  List<MessageVM> get _messages => messages;

  @override
  set _messages(List<MessageVM> value) {
    _$_messagesAtom.reportWrite(value, super._messages, () {
      super._messages = value;
    });
  }

  late final _$_sendingMessagesAtom =
      Atom(name: '_ChatStore._sendingMessages', context: context);

  List<UserMessageVM> get sendingMessages {
    _$_sendingMessagesAtom.reportRead();
    return super._sendingMessages;
  }

  @override
  List<UserMessageVM> get _sendingMessages => sendingMessages;

  @override
  set _sendingMessages(List<UserMessageVM> value) {
    _$_sendingMessagesAtom.reportWrite(value, super._sendingMessages, () {
      super._sendingMessages = value;
    });
  }

  late final _$loadChatAsyncAction =
      AsyncAction('_ChatStore.loadChat', context: context);

  @override
  Future<void> loadChat({bool refresh = false}) {
    return _$loadChatAsyncAction.run(() => super.loadChat(refresh: refresh));
  }

  late final _$loadMessagesAsyncAction =
      AsyncAction('_ChatStore.loadMessages', context: context);

  @override
  Future<void> loadMessages() {
    return _$loadMessagesAsyncAction.run(() => super.loadMessages());
  }

  late final _$loadMoreMessagesAsyncAction =
      AsyncAction('_ChatStore.loadMoreMessages', context: context);

  @override
  Future<void> loadMoreMessages() {
    return _$loadMoreMessagesAsyncAction.run(() => super.loadMoreMessages());
  }

  late final _$sendMessageAsyncAction =
      AsyncAction('_ChatStore.sendMessage', context: context);

  @override
  Future<void> sendMessage({required String text}) {
    return _$sendMessageAsyncAction.run(() => super.sendMessage(text: text));
  }

  late final _$_listenAsyncAction =
      AsyncAction('_ChatStore._listen', context: context);

  @override
  Future<void> _listen() {
    return _$_listenAsyncAction.run(() => super._listen());
  }

  @override
  String toString() {
    return '''
chatID: ${chatID}
    ''';
  }
}

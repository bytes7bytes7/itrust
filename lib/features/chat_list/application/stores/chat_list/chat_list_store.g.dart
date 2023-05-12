// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChatListStore on _ChatListStore, Store {
  Computed<bool>? _$showAppBarLoadingComputed;

  @override
  bool get showAppBarLoading => (_$showAppBarLoadingComputed ??= Computed<bool>(
          () => super.showAppBarLoading,
          name: '_ChatListStore.showAppBarLoading'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_ChatListStore._isLoading', context: context);

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

  late final _$_errorAtom =
      Atom(name: '_ChatListStore._error', context: context);

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

  late final _$_chatsAtom =
      Atom(name: '_ChatListStore._chats', context: context);

  List<ChatVM> get chats {
    _$_chatsAtom.reportRead();
    return super._chats;
  }

  @override
  List<ChatVM> get _chats => chats;

  @override
  set _chats(List<ChatVM> value) {
    _$_chatsAtom.reportWrite(value, super._chats, () {
      super._chats = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_ChatListStore._canLoadMore', context: context);

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
      Atom(name: '_ChatListStore._isLoadingMore', context: context);

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

  late final _$_ChatListStoreActionController =
      ActionController(name: '_ChatListStore', context: context);

  @override
  void listen() {
    final _$actionInfo = _$_ChatListStoreActionController.startAction(
        name: '_ChatListStore.listen');
    try {
      return super.listen();
    } finally {
      _$_ChatListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadChats({bool refresh = false}) {
    final _$actionInfo = _$_ChatListStoreActionController.startAction(
        name: '_ChatListStore.loadChats');
    try {
      return super.loadChats(refresh: refresh);
    } finally {
      _$_ChatListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadMoreChats() {
    final _$actionInfo = _$_ChatListStoreActionController.startAction(
        name: '_ChatListStore.loadMoreChats');
    try {
      return super.loadMoreChats();
    } finally {
      _$_ChatListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_ChatListStoreActionController.startAction(
        name: '_ChatListStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_ChatListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChatCardPressed({required String chatID}) {
    final _$actionInfo = _$_ChatListStoreActionController.startAction(
        name: '_ChatListStore.onChatCardPressed');
    try {
      return super.onChatCardPressed(chatID: chatID);
    } finally {
      _$_ChatListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showAppBarLoading: ${showAppBarLoading}
    ''';
  }
}

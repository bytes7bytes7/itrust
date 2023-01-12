// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChatListStore on _ChatListStore, Store {
  Computed<bool>? _$showItemLoadingComputed;

  @override
  bool get showItemLoading =>
      (_$showItemLoadingComputed ??= Computed<bool>(() => super.showItemLoading,
              name: '_ChatListStore.showItemLoading'))
          .value;
  Computed<bool>? _$showAppBarLoadingComputed;

  @override
  bool get showAppBarLoading => (_$showAppBarLoadingComputed ??= Computed<bool>(
          () => super.showAppBarLoading,
          name: '_ChatListStore.showAppBarLoading'))
      .value;
  Computed<bool>? _$showItemsComputed;

  @override
  bool get showItems =>
      (_$showItemsComputed ??= Computed<bool>(() => super.showItems,
              name: '_ChatListStore.showItems'))
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

  Object? get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  Object? get _error => error;

  @override
  set _error(Object? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
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

  late final _$_chatsAtom =
      Atom(name: '_ChatListStore._chats', context: context);

  List<Chat> get chats {
    _$_chatsAtom.reportRead();
    return super._chats;
  }

  @override
  List<Chat> get _chats => chats;

  @override
  set _chats(List<Chat> value) {
    _$_chatsAtom.reportWrite(value, super._chats, () {
      super._chats = value;
    });
  }

  late final _$_hasMoreChatsAtom =
      Atom(name: '_ChatListStore._hasMoreChats', context: context);

  bool get hasMoreChats {
    _$_hasMoreChatsAtom.reportRead();
    return super._hasMoreChats;
  }

  @override
  bool get _hasMoreChats => hasMoreChats;

  @override
  set _hasMoreChats(bool value) {
    _$_hasMoreChatsAtom.reportWrite(value, super._hasMoreChats, () {
      super._hasMoreChats = value;
    });
  }

  late final _$_pageAtom = Atom(name: '_ChatListStore._page', context: context);

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

  late final _$refreshAsyncAction =
      AsyncAction('_ChatListStore.refresh', context: context);

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  late final _$loadAsyncAction =
      AsyncAction('_ChatListStore.load', context: context);

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  late final _$_ChatListStoreActionController =
      ActionController(name: '_ChatListStore', context: context);

  @override
  void onChatCardPressed(Chat chat) {
    final _$actionInfo = _$_ChatListStoreActionController.startAction(
        name: '_ChatListStore.onChatCardPressed');
    try {
      return super.onChatCardPressed(chat);
    } finally {
      _$_ChatListStoreActionController.endAction(_$actionInfo);
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

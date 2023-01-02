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

  late final _$_queryAtom =
      Atom(name: '_ChatListStore._query', context: context);

  String get query {
    _$_queryAtom.reportRead();
    return super._query;
  }

  @override
  String get _query => query;

  @override
  set _query(String value) {
    _$_queryAtom.reportWrite(value, super._query, () {
      super._query = value;
    });
  }

  late final _$_selectedAtom =
      Atom(name: '_ChatListStore._selected', context: context);

  Chat? get selected {
    _$_selectedAtom.reportRead();
    return super._selected;
  }

  @override
  Chat? get _selected => selected;

  @override
  set _selected(Chat? value) {
    _$_selectedAtom.reportWrite(value, super._selected, () {
      super._selected = value;
    });
  }

  late final _$_suggestionsAtom =
      Atom(name: '_ChatListStore._suggestions', context: context);

  List<Chat> get suggestions {
    _$_suggestionsAtom.reportRead();
    return super._suggestions;
  }

  @override
  List<Chat> get _suggestions => suggestions;

  @override
  set _suggestions(List<Chat> value) {
    _$_suggestionsAtom.reportWrite(value, super._suggestions, () {
      super._suggestions = value;
    });
  }

  late final _$_hasMoreSuggestionsAtom =
      Atom(name: '_ChatListStore._hasMoreSuggestions', context: context);

  bool get hasMoreSuggestions {
    _$_hasMoreSuggestionsAtom.reportRead();
    return super._hasMoreSuggestions;
  }

  @override
  bool get _hasMoreSuggestions => hasMoreSuggestions;

  @override
  set _hasMoreSuggestions(bool value) {
    _$_hasMoreSuggestionsAtom.reportWrite(value, super._hasMoreSuggestions, () {
      super._hasMoreSuggestions = value;
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

  late final _$setQueryAsyncAction =
      AsyncAction('_ChatListStore.setQuery', context: context);

  @override
  Future<void> setQuery(String query) {
    return _$setQueryAsyncAction.run(() => super.setQuery(query));
  }

  late final _$selectItemAsyncAction =
      AsyncAction('_ChatListStore.selectItem', context: context);

  @override
  Future<void> selectItem(Chat item) {
    return _$selectItemAsyncAction.run(() => super.selectItem(item));
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dialogue_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateDialogueStore on _CreateDialogueStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_CreateDialogueStore.hasError'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_CreateDialogueStore._isLoading', context: context);

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
      Atom(name: '_CreateDialogueStore._error', context: context);

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

  late final _$_usersAtom =
      Atom(name: '_CreateDialogueStore._users', context: context);

  List<UserVM> get users {
    _$_usersAtom.reportRead();
    return super._users;
  }

  @override
  List<UserVM> get _users => users;

  @override
  set _users(List<UserVM> value) {
    _$_usersAtom.reportWrite(value, super._users, () {
      super._users = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_CreateDialogueStore._canLoadMore', context: context);

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
      Atom(name: '_CreateDialogueStore._isLoadingMore', context: context);

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

  late final _$_CreateDialogueStoreActionController =
      ActionController(name: '_CreateDialogueStore', context: context);

  @override
  void loadUsers() {
    final _$actionInfo = _$_CreateDialogueStoreActionController.startAction(
        name: '_CreateDialogueStore.loadUsers');
    try {
      return super.loadUsers();
    } finally {
      _$_CreateDialogueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_CreateDialogueStoreActionController.startAction(
        name: '_CreateDialogueStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_CreateDialogueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadMoreUsers() {
    final _$actionInfo = _$_CreateDialogueStoreActionController.startAction(
        name: '_CreateDialogueStore.loadMoreUsers');
    try {
      return super.loadMoreUsers();
    } finally {
      _$_CreateDialogueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}

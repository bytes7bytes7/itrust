// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_users_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AllUsersStore on _AllUsersStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_AllUsersStore._isLoading', context: context);

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
      Atom(name: '_AllUsersStore._error', context: context);

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

  late final _$_userIDAtom =
      Atom(name: '_AllUsersStore._userID', context: context);

  UserID? get userID {
    _$_userIDAtom.reportRead();
    return super._userID;
  }

  @override
  UserID? get _userID => userID;

  @override
  set _userID(UserID? value) {
    _$_userIDAtom.reportWrite(value, super._userID, () {
      super._userID = value;
    });
  }

  late final _$_usersAtom =
      Atom(name: '_AllUsersStore._users', context: context);

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

  late final _$_isLoadedAtom =
      Atom(name: '_AllUsersStore._isLoaded', context: context);

  bool get isLoaded {
    _$_isLoadedAtom.reportRead();
    return super._isLoaded;
  }

  @override
  bool get _isLoaded => isLoaded;

  @override
  set _isLoaded(bool value) {
    _$_isLoadedAtom.reportWrite(value, super._isLoaded, () {
      super._isLoaded = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_AllUsersStore._canLoadMore', context: context);

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
      Atom(name: '_AllUsersStore._isLoadingMore', context: context);

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

  late final _$_AllUsersStoreActionController =
      ActionController(name: '_AllUsersStore', context: context);

  @override
  void loadUsers({bool refresh = false}) {
    final _$actionInfo = _$_AllUsersStoreActionController.startAction(
        name: '_AllUsersStore.loadUsers');
    try {
      return super.loadUsers(refresh: refresh);
    } finally {
      _$_AllUsersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_AllUsersStoreActionController.startAction(
        name: '_AllUsersStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_AllUsersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadMoreUsers() {
    final _$actionInfo = _$_AllUsersStoreActionController.startAction(
        name: '_AllUsersStore.loadMoreUsers');
    try {
      return super.loadMoreUsers();
    } finally {
      _$_AllUsersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetIsLoaded() {
    final _$actionInfo = _$_AllUsersStoreActionController.startAction(
        name: '_AllUsersStore.resetIsLoaded');
    try {
      return super.resetIsLoaded();
    } finally {
      _$_AllUsersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

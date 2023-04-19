// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FriendsStore on _FriendsStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_FriendsStore.hasError'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_FriendsStore._isLoading', context: context);

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
      Atom(name: '_FriendsStore._error', context: context);

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

  late final _$_friendsToAtom =
      Atom(name: '_FriendsStore._friendsTo', context: context);

  UserID? get friendsTo {
    _$_friendsToAtom.reportRead();
    return super._friendsTo;
  }

  @override
  UserID? get _friendsTo => friendsTo;

  @override
  set _friendsTo(UserID? value) {
    _$_friendsToAtom.reportWrite(value, super._friendsTo, () {
      super._friendsTo = value;
    });
  }

  late final _$_friendsAtom =
      Atom(name: '_FriendsStore._friends', context: context);

  List<EndUserVM> get friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  List<EndUserVM> get _friends => friends;

  @override
  set _friends(List<EndUserVM> value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  late final _$_isLoadedAtom =
      Atom(name: '_FriendsStore._isLoaded', context: context);

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
      Atom(name: '_FriendsStore._canLoadMore', context: context);

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
      Atom(name: '_FriendsStore._isLoadingMore', context: context);

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

  late final _$_FriendsStoreActionController =
      ActionController(name: '_FriendsStore', context: context);

  @override
  void loadFriends({bool refresh = false}) {
    final _$actionInfo = _$_FriendsStoreActionController.startAction(
        name: '_FriendsStore.loadFriends');
    try {
      return super.loadFriends(refresh: refresh);
    } finally {
      _$_FriendsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_FriendsStoreActionController.startAction(
        name: '_FriendsStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_FriendsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadMoreFriends() {
    final _$actionInfo = _$_FriendsStoreActionController.startAction(
        name: '_FriendsStore.loadMoreFriends');
    try {
      return super.loadMoreFriends();
    } finally {
      _$_FriendsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetIsLoaded() {
    final _$actionInfo = _$_FriendsStoreActionController.startAction(
        name: '_FriendsStore.resetIsLoaded');
    try {
      return super.resetIsLoaded();
    } finally {
      _$_FriendsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PeopleStore on _PeopleStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_PeopleStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_PeopleStore._error', context: context);

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
      Atom(name: '_PeopleStore._userID', context: context);

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

  late final _$_currentTabIndexAtom =
      Atom(name: '_PeopleStore._currentTabIndex', context: context);

  int get currentTabIndex {
    _$_currentTabIndexAtom.reportRead();
    return super._currentTabIndex;
  }

  @override
  int get _currentTabIndex => currentTabIndex;

  @override
  set _currentTabIndex(int value) {
    _$_currentTabIndexAtom.reportWrite(value, super._currentTabIndex, () {
      super._currentTabIndex = value;
    });
  }

  late final _$_allUsersAmountAtom =
      Atom(name: '_PeopleStore._allUsersAmount', context: context);

  String get allUsersAmount {
    _$_allUsersAmountAtom.reportRead();
    return super._allUsersAmount;
  }

  @override
  String get _allUsersAmount => allUsersAmount;

  @override
  set _allUsersAmount(String value) {
    _$_allUsersAmountAtom.reportWrite(value, super._allUsersAmount, () {
      super._allUsersAmount = value;
    });
  }

  late final _$_friendsAmountAtom =
      Atom(name: '_PeopleStore._friendsAmount', context: context);

  String get friendsAmount {
    _$_friendsAmountAtom.reportRead();
    return super._friendsAmount;
  }

  @override
  String get _friendsAmount => friendsAmount;

  @override
  set _friendsAmount(String value) {
    _$_friendsAmountAtom.reportWrite(value, super._friendsAmount, () {
      super._friendsAmount = value;
    });
  }

  late final _$_subscribersAmountAtom =
      Atom(name: '_PeopleStore._subscribersAmount', context: context);

  String get subscribersAmount {
    _$_subscribersAmountAtom.reportRead();
    return super._subscribersAmount;
  }

  @override
  String get _subscribersAmount => subscribersAmount;

  @override
  set _subscribersAmount(String value) {
    _$_subscribersAmountAtom.reportWrite(value, super._subscribersAmount, () {
      super._subscribersAmount = value;
    });
  }

  late final _$_subscriptionsAmountAtom =
      Atom(name: '_PeopleStore._subscriptionsAmount', context: context);

  String get subscriptionsAmount {
    _$_subscriptionsAmountAtom.reportRead();
    return super._subscriptionsAmount;
  }

  @override
  String get _subscriptionsAmount => subscriptionsAmount;

  @override
  set _subscriptionsAmount(String value) {
    _$_subscriptionsAmountAtom.reportWrite(value, super._subscriptionsAmount,
        () {
      super._subscriptionsAmount = value;
    });
  }

  late final _$_PeopleStoreActionController =
      ActionController(name: '_PeopleStore', context: context);

  @override
  void loadMe() {
    final _$actionInfo =
        _$_PeopleStoreActionController.startAction(name: '_PeopleStore.loadMe');
    try {
      return super.loadMe();
    } finally {
      _$_PeopleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void load() {
    final _$actionInfo =
        _$_PeopleStoreActionController.startAction(name: '_PeopleStore.load');
    try {
      return super.load();
    } finally {
      _$_PeopleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_PeopleStoreActionController.startAction(
        name: '_PeopleStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_PeopleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectTab({required int index}) {
    final _$actionInfo = _$_PeopleStoreActionController.startAction(
        name: '_PeopleStore.selectTab');
    try {
      return super.selectTab(index: index);
    } finally {
      _$_PeopleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

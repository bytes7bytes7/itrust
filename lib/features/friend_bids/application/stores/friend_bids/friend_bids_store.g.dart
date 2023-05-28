// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_bids_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FriendBidsStore on _FriendBidsStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_FriendBidsStore._isLoading', context: context);

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
      Atom(name: '_FriendBidsStore._error', context: context);

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
      Atom(name: '_FriendBidsStore._userID', context: context);

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
      Atom(name: '_FriendBidsStore._currentTabIndex', context: context);

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

  late final _$_inboxBidsAmountAtom =
      Atom(name: '_FriendBidsStore._inboxBidsAmount', context: context);

  String get inboxBidsAmount {
    _$_inboxBidsAmountAtom.reportRead();
    return super._inboxBidsAmount;
  }

  @override
  String get _inboxBidsAmount => inboxBidsAmount;

  @override
  set _inboxBidsAmount(String value) {
    _$_inboxBidsAmountAtom.reportWrite(value, super._inboxBidsAmount, () {
      super._inboxBidsAmount = value;
    });
  }

  late final _$_outboxBidsAmountAtom =
      Atom(name: '_FriendBidsStore._outboxBidsAmount', context: context);

  String get outboxBidsAmount {
    _$_outboxBidsAmountAtom.reportRead();
    return super._outboxBidsAmount;
  }

  @override
  String get _outboxBidsAmount => outboxBidsAmount;

  @override
  set _outboxBidsAmount(String value) {
    _$_outboxBidsAmountAtom.reportWrite(value, super._outboxBidsAmount, () {
      super._outboxBidsAmount = value;
    });
  }

  late final _$loadAsyncAction =
      AsyncAction('_FriendBidsStore.load', context: context);

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  late final _$acceptBidAsyncAction =
      AsyncAction('_FriendBidsStore.acceptBid', context: context);

  @override
  Future<void> acceptBid(String userID) {
    return _$acceptBidAsyncAction.run(() => super.acceptBid(userID));
  }

  late final _$declineBidAsyncAction =
      AsyncAction('_FriendBidsStore.declineBid', context: context);

  @override
  Future<void> declineBid(String userID) {
    return _$declineBidAsyncAction.run(() => super.declineBid(userID));
  }

  late final _$cancelBidAsyncAction =
      AsyncAction('_FriendBidsStore.cancelBid', context: context);

  @override
  Future<void> cancelBid(String userID) {
    return _$cancelBidAsyncAction.run(() => super.cancelBid(userID));
  }

  late final _$_FriendBidsStoreActionController =
      ActionController(name: '_FriendBidsStore', context: context);

  @override
  void loadMe() {
    final _$actionInfo = _$_FriendBidsStoreActionController.startAction(
        name: '_FriendBidsStore.loadMe');
    try {
      return super.loadMe();
    } finally {
      _$_FriendBidsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_FriendBidsStoreActionController.startAction(
        name: '_FriendBidsStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_FriendBidsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectTab({required int index}) {
    final _$actionInfo = _$_FriendBidsStoreActionController.startAction(
        name: '_FriendBidsStore.selectTab');
    try {
      return super.selectTab(index: index);
    } finally {
      _$_FriendBidsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

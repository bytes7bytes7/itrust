// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserInfoStore on _UserInfoStore, Store {
  Computed<bool>? _$showActionBtnsComputed;

  @override
  bool get showActionBtns =>
      (_$showActionBtnsComputed ??= Computed<bool>(() => super.showActionBtns,
              name: '_UserInfoStore.showActionBtns'))
          .value;
  Computed<bool>? _$showAddFriendBtnComputed;

  @override
  bool get showAddFriendBtn => (_$showAddFriendBtnComputed ??= Computed<bool>(
          () => super.showAddFriendBtn,
          name: '_UserInfoStore.showAddFriendBtn'))
      .value;
  Computed<bool>? _$showCancelRequestBtnComputed;

  @override
  bool get showCancelRequestBtn => (_$showCancelRequestBtnComputed ??=
          Computed<bool>(() => super.showCancelRequestBtn,
              name: '_UserInfoStore.showCancelRequestBtn'))
      .value;
  Computed<bool>? _$showRemoveFriendBtnComputed;

  @override
  bool get showRemoveFriendBtn => (_$showRemoveFriendBtnComputed ??=
          Computed<bool>(() => super.showRemoveFriendBtn,
              name: '_UserInfoStore.showRemoveFriendBtn'))
      .value;
  Computed<bool>? _$showRemoveSubscriberBtnComputed;

  @override
  bool get showRemoveSubscriberBtn => (_$showRemoveSubscriberBtnComputed ??=
          Computed<bool>(() => super.showRemoveSubscriberBtn,
              name: '_UserInfoStore.showRemoveSubscriberBtn'))
      .value;
  Computed<bool>? _$showAcceptRequestBtnComputed;

  @override
  bool get showAcceptRequestBtn => (_$showAcceptRequestBtnComputed ??=
          Computed<bool>(() => super.showAcceptRequestBtn,
              name: '_UserInfoStore.showAcceptRequestBtn'))
      .value;
  Computed<bool>? _$showUnsubscribeBtnComputed;

  @override
  bool get showUnsubscribeBtn => (_$showUnsubscribeBtnComputed ??=
          Computed<bool>(() => super.showUnsubscribeBtn,
              name: '_UserInfoStore.showUnsubscribeBtn'))
      .value;
  Computed<bool>? _$showMessageBtnComputed;

  @override
  bool get showMessageBtn =>
      (_$showMessageBtnComputed ??= Computed<bool>(() => super.showMessageBtn,
              name: '_UserInfoStore.showMessageBtn'))
          .value;
  Computed<bool>? _$showDeclineRequestBtnComputed;

  @override
  bool get showDeclineRequestBtn => (_$showDeclineRequestBtnComputed ??=
          Computed<bool>(() => super.showDeclineRequestBtn,
              name: '_UserInfoStore.showDeclineRequestBtn'))
      .value;
  Computed<bool>? _$canMessageBtnBePressedComputed;

  @override
  bool get canMessageBtnBePressed => (_$canMessageBtnBePressedComputed ??=
          Computed<bool>(() => super.canMessageBtnBePressed,
              name: '_UserInfoStore.canMessageBtnBePressed'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_UserInfoStore._isLoading', context: context);

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
      Atom(name: '_UserInfoStore._error', context: context);

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

  late final _$_myIDAtom = Atom(name: '_UserInfoStore._myID', context: context);

  String? get myID {
    _$_myIDAtom.reportRead();
    return super._myID;
  }

  @override
  String? get _myID => myID;

  @override
  set _myID(String? value) {
    _$_myIDAtom.reportWrite(value, super._myID, () {
      super._myID = value;
    });
  }

  late final _$_userIDAtom =
      Atom(name: '_UserInfoStore._userID', context: context);

  String? get userID {
    _$_userIDAtom.reportRead();
    return super._userID;
  }

  @override
  String? get _userID => userID;

  @override
  set _userID(String? value) {
    _$_userIDAtom.reportWrite(value, super._userID, () {
      super._userID = value;
    });
  }

  late final _$_userInfoAtom =
      Atom(name: '_UserInfoStore._userInfo', context: context);

  UserInfoVM? get userInfo {
    _$_userInfoAtom.reportRead();
    return super._userInfo;
  }

  @override
  UserInfoVM? get _userInfo => userInfo;

  @override
  set _userInfo(UserInfoVM? value) {
    _$_userInfoAtom.reportWrite(value, super._userInfo, () {
      super._userInfo = value;
    });
  }

  late final _$_isActionLoadingAtom =
      Atom(name: '_UserInfoStore._isActionLoading', context: context);

  bool get isActionLoading {
    _$_isActionLoadingAtom.reportRead();
    return super._isActionLoading;
  }

  @override
  bool get _isActionLoading => isActionLoading;

  @override
  set _isActionLoading(bool value) {
    _$_isActionLoadingAtom.reportWrite(value, super._isActionLoading, () {
      super._isActionLoading = value;
    });
  }

  late final _$loadInfoAsyncAction =
      AsyncAction('_UserInfoStore.loadInfo', context: context);

  @override
  Future<void> loadInfo({bool refresh = false}) {
    return _$loadInfoAsyncAction.run(() => super.loadInfo(refresh: refresh));
  }

  late final _$sendFriendBidAsyncAction =
      AsyncAction('_UserInfoStore.sendFriendBid', context: context);

  @override
  Future<void> sendFriendBid() {
    return _$sendFriendBidAsyncAction.run(() => super.sendFriendBid());
  }

  late final _$cancelFriendBidAsyncAction =
      AsyncAction('_UserInfoStore.cancelFriendBid', context: context);

  @override
  Future<void> cancelFriendBid() {
    return _$cancelFriendBidAsyncAction.run(() => super.cancelFriendBid());
  }

  late final _$removeFriendAsyncAction =
      AsyncAction('_UserInfoStore.removeFriend', context: context);

  @override
  Future<void> removeFriend() {
    return _$removeFriendAsyncAction.run(() => super.removeFriend());
  }

  late final _$removeSubscriberAsyncAction =
      AsyncAction('_UserInfoStore.removeSubscriber', context: context);

  @override
  Future<void> removeSubscriber() {
    return _$removeSubscriberAsyncAction.run(() => super.removeSubscriber());
  }

  late final _$acceptFriendBidAsyncAction =
      AsyncAction('_UserInfoStore.acceptFriendBid', context: context);

  @override
  Future<void> acceptFriendBid() {
    return _$acceptFriendBidAsyncAction.run(() => super.acceptFriendBid());
  }

  late final _$declineFriendBidAsyncAction =
      AsyncAction('_UserInfoStore.declineFriendBid', context: context);

  @override
  Future<void> declineFriendBid() {
    return _$declineFriendBidAsyncAction.run(() => super.declineFriendBid());
  }

  late final _$unsubscribeAsyncAction =
      AsyncAction('_UserInfoStore.unsubscribe', context: context);

  @override
  Future<void> unsubscribe() {
    return _$unsubscribeAsyncAction.run(() => super.unsubscribe());
  }

  late final _$_UserInfoStoreActionController =
      ActionController(name: '_UserInfoStore', context: context);

  @override
  void refresh() {
    final _$actionInfo = _$_UserInfoStoreActionController.startAction(
        name: '_UserInfoStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_UserInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showActionBtns: ${showActionBtns},
showAddFriendBtn: ${showAddFriendBtn},
showCancelRequestBtn: ${showCancelRequestBtn},
showRemoveFriendBtn: ${showRemoveFriendBtn},
showRemoveSubscriberBtn: ${showRemoveSubscriberBtn},
showAcceptRequestBtn: ${showAcceptRequestBtn},
showUnsubscribeBtn: ${showUnsubscribeBtn},
showMessageBtn: ${showMessageBtn},
showDeclineRequestBtn: ${showDeclineRequestBtn},
canMessageBtnBePressed: ${canMessageBtnBePressed}
    ''';
  }
}

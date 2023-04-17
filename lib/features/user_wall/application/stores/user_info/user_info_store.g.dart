// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserInfoStore on _UserInfoStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_UserInfoStore.hasError'))
      .value;
  Computed<bool>? _$showActionsComputed;

  @override
  bool get showActions =>
      (_$showActionsComputed ??= Computed<bool>(() => super.showActions,
              name: '_UserInfoStore.showActions'))
          .value;
  Computed<bool>? _$showAddFriendComputed;

  @override
  bool get showAddFriend =>
      (_$showAddFriendComputed ??= Computed<bool>(() => super.showAddFriend,
              name: '_UserInfoStore.showAddFriend'))
          .value;
  Computed<bool>? _$showCancelRequestComputed;

  @override
  bool get showCancelRequest => (_$showCancelRequestComputed ??= Computed<bool>(
          () => super.showCancelRequest,
          name: '_UserInfoStore.showCancelRequest'))
      .value;
  Computed<bool>? _$showRemoveFriendComputed;

  @override
  bool get showRemoveFriend => (_$showRemoveFriendComputed ??= Computed<bool>(
          () => super.showRemoveFriend,
          name: '_UserInfoStore.showRemoveFriend'))
      .value;
  Computed<bool>? _$showRemoveSubscriberComputed;

  @override
  bool get showRemoveSubscriber => (_$showRemoveSubscriberComputed ??=
          Computed<bool>(() => super.showRemoveSubscriber,
              name: '_UserInfoStore.showRemoveSubscriber'))
      .value;
  Computed<bool>? _$showAcceptRequestComputed;

  @override
  bool get showAcceptRequest => (_$showAcceptRequestComputed ??= Computed<bool>(
          () => super.showAcceptRequest,
          name: '_UserInfoStore.showAcceptRequest'))
      .value;
  Computed<bool>? _$showOpenChatComputed;

  @override
  bool get showOpenChat =>
      (_$showOpenChatComputed ??= Computed<bool>(() => super.showOpenChat,
              name: '_UserInfoStore.showOpenChat'))
          .value;
  Computed<bool>? _$showDeclineRequestComputed;

  @override
  bool get showDeclineRequest => (_$showDeclineRequestComputed ??=
          Computed<bool>(() => super.showDeclineRequest,
              name: '_UserInfoStore.showDeclineRequest'))
      .value;
  Computed<bool>? _$canIOpenChatComputed;

  @override
  bool get canIOpenChat =>
      (_$canIOpenChatComputed ??= Computed<bool>(() => super.canIOpenChat,
              name: '_UserInfoStore.canIOpenChat'))
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

  late final _$_UserInfoStoreActionController =
      ActionController(name: '_UserInfoStore', context: context);

  @override
  void loadInfo({bool refresh = false}) {
    final _$actionInfo = _$_UserInfoStoreActionController.startAction(
        name: '_UserInfoStore.loadInfo');
    try {
      return super.loadInfo(refresh: refresh);
    } finally {
      _$_UserInfoStoreActionController.endAction(_$actionInfo);
    }
  }

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
hasError: ${hasError},
showActions: ${showActions},
showAddFriend: ${showAddFriend},
showCancelRequest: ${showCancelRequest},
showRemoveFriend: ${showRemoveFriend},
showRemoveSubscriber: ${showRemoveSubscriber},
showAcceptRequest: ${showAcceptRequest},
showOpenChat: ${showOpenChat},
showDeclineRequest: ${showDeclineRequest},
canIOpenChat: ${canIOpenChat}
    ''';
  }
}

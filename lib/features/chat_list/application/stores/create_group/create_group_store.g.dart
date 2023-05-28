// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateGroupStore on _CreateGroupStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_CreateGroupStore.hasError'))
          .value;
  Computed<String>? _$participantsAmountComputed;

  @override
  String get participantsAmount => (_$participantsAmountComputed ??=
          Computed<String>(() => super.participantsAmount,
              name: '_CreateGroupStore.participantsAmount'))
      .value;
  Computed<bool>? _$canCreateChatComputed;

  @override
  bool get canCreateChat =>
      (_$canCreateChatComputed ??= Computed<bool>(() => super.canCreateChat,
              name: '_CreateGroupStore.canCreateChat'))
          .value;

  late final _$chatNameAtom =
      Atom(name: '_CreateGroupStore.chatName', context: context);

  @override
  String get chatName {
    _$chatNameAtom.reportRead();
    return super.chatName;
  }

  @override
  set chatName(String value) {
    _$chatNameAtom.reportWrite(value, super.chatName, () {
      super.chatName = value;
    });
  }

  late final _$photoAtom =
      Atom(name: '_CreateGroupStore.photo', context: context);

  @override
  Uint8List? get photo {
    _$photoAtom.reportRead();
    return super.photo;
  }

  @override
  set photo(Uint8List? value) {
    _$photoAtom.reportWrite(value, super.photo, () {
      super.photo = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: '_CreateGroupStore._isLoading', context: context);

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
      Atom(name: '_CreateGroupStore._error', context: context);

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

  late final _$_userIDsAtom =
      Atom(name: '_CreateGroupStore._userIDs', context: context);

  List<String> get userIDs {
    _$_userIDsAtom.reportRead();
    return super._userIDs;
  }

  @override
  List<String> get _userIDs => userIDs;

  @override
  set _userIDs(List<String> value) {
    _$_userIDsAtom.reportWrite(value, super._userIDs, () {
      super._userIDs = value;
    });
  }

  late final _$_selectedUserIDsAtom =
      Atom(name: '_CreateGroupStore._selectedUserIDs', context: context);

  List<String> get selectedUserIDs {
    _$_selectedUserIDsAtom.reportRead();
    return super._selectedUserIDs;
  }

  @override
  List<String> get _selectedUserIDs => selectedUserIDs;

  @override
  set _selectedUserIDs(List<String> value) {
    _$_selectedUserIDsAtom.reportWrite(value, super._selectedUserIDs, () {
      super._selectedUserIDs = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_CreateGroupStore._canLoadMore', context: context);

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
      Atom(name: '_CreateGroupStore._isLoadingMore', context: context);

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

  late final _$_isCreatingChatAtom =
      Atom(name: '_CreateGroupStore._isCreatingChat', context: context);

  bool get isCreatingChat {
    _$_isCreatingChatAtom.reportRead();
    return super._isCreatingChat;
  }

  @override
  bool get _isCreatingChat => isCreatingChat;

  @override
  set _isCreatingChat(bool value) {
    _$_isCreatingChatAtom.reportWrite(value, super._isCreatingChat, () {
      super._isCreatingChat = value;
    });
  }

  late final _$loadUsersAsyncAction =
      AsyncAction('_CreateGroupStore.loadUsers', context: context);

  @override
  Future<void> loadUsers() {
    return _$loadUsersAsyncAction.run(() => super.loadUsers());
  }

  late final _$loadMoreUsersAsyncAction =
      AsyncAction('_CreateGroupStore.loadMoreUsers', context: context);

  @override
  Future<void> loadMoreUsers() {
    return _$loadMoreUsersAsyncAction.run(() => super.loadMoreUsers());
  }

  late final _$createChatAsyncAction =
      AsyncAction('_CreateGroupStore.createChat', context: context);

  @override
  Future<void> createChat() {
    return _$createChatAsyncAction.run(() => super.createChat());
  }

  late final _$_CreateGroupStoreActionController =
      ActionController(name: '_CreateGroupStore', context: context);

  @override
  void reset() {
    final _$actionInfo = _$_CreateGroupStoreActionController.startAction(
        name: '_CreateGroupStore.reset');
    try {
      return super.reset();
    } finally {
      _$_CreateGroupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_CreateGroupStoreActionController.startAction(
        name: '_CreateGroupStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_CreateGroupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onUserCheckboxTap({required String userID}) {
    final _$actionInfo = _$_CreateGroupStoreActionController.startAction(
        name: '_CreateGroupStore.onUserCheckboxTap');
    try {
      return super.onUserCheckboxTap(userID: userID);
    } finally {
      _$_CreateGroupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chatName: ${chatName},
photo: ${photo},
hasError: ${hasError},
participantsAmount: ${participantsAmount},
canCreateChat: ${canCreateChat}
    ''';
  }
}

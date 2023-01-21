// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserInfoStore on _UserInfoStore, Store {
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

  late final _$_userIDAtom =
      Atom(name: '_UserInfoStore._userID', context: context);

  String get userID {
    _$_userIDAtom.reportRead();
    return super._userID;
  }

  @override
  String get _userID => userID;

  @override
  set _userID(String value) {
    _$_userIDAtom.reportWrite(value, super._userID, () {
      super._userID = value;
    });
  }

  late final _$_UserInfoStoreActionController =
      ActionController(name: '_UserInfoStore', context: context);

  @override
  void loadInfo({required String userID}) {
    final _$actionInfo = _$_UserInfoStoreActionController.startAction(
        name: '_UserInfoStore.loadInfo');
    try {
      return super.loadInfo(userID: userID);
    } finally {
      _$_UserInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

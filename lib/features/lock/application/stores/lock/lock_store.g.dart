// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LockStore on _LockStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_LockStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_LockStore._error', context: context);

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

  late final _$selectedUserAtom =
      Atom(name: '_LockStore.selectedUser', context: context);

  @override
  User? get selectedUser {
    _$selectedUserAtom.reportRead();
    return super.selectedUser;
  }

  @override
  set selectedUser(User? value) {
    _$selectedUserAtom.reportWrite(value, super.selectedUser, () {
      super.selectedUser = value;
    });
  }

  late final _$_LockStoreActionController =
      ActionController(name: '_LockStore', context: context);

  @override
  void unlock({required String passphrase}) {
    final _$actionInfo =
        _$_LockStoreActionController.startAction(name: '_LockStore.unlock');
    try {
      return super.unlock(passphrase: passphrase);
    } finally {
      _$_LockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedUser: ${selectedUser}
    ''';
  }
}

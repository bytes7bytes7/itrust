// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStore on _MenuStore, Store {
  late final _$_errorAtom = Atom(name: '_MenuStore._error', context: context);

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

  late final _$_myIDAtom = Atom(name: '_MenuStore._myID', context: context);

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

  late final _$_MenuStoreActionController =
      ActionController(name: '_MenuStore', context: context);

  @override
  void loadMe() {
    final _$actionInfo =
        _$_MenuStoreActionController.startAction(name: '_MenuStore.loadMe');
    try {
      return super.loadMe();
    } finally {
      _$_MenuStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

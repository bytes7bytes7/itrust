// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStore on _MenuStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_MenuStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_MenuStore._error', context: context);

  Object? get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  Object? get _error => error;

  @override
  set _error(Object? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_MenuStoreActionController =
      ActionController(name: '_MenuStore', context: context);

  @override
  void onMoreBtnPressed() {
    final _$actionInfo = _$_MenuStoreActionController.startAction(
        name: '_MenuStore.onMoreBtnPressed');
    try {
      return super.onMoreBtnPressed();
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

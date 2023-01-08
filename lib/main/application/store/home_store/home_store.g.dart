// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$_currentTabIndexAtom =
      Atom(name: '_HomeStore._currentTabIndex', context: context);

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

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void onTabSelect(int index) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onTabSelect');
    try {
      return super.onTabSelect(index);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkOrSetTab(int index) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.checkOrSetTab');
    try {
      return super.checkOrSetTab(index);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

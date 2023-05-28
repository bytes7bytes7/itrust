// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RulesStore on _RulesStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_RulesStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_RulesStore._error', context: context);

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

  late final _$_rulesAtom = Atom(name: '_RulesStore._rules', context: context);

  String? get rules {
    _$_rulesAtom.reportRead();
    return super._rules;
  }

  @override
  String? get _rules => rules;

  @override
  set _rules(String? value) {
    _$_rulesAtom.reportWrite(value, super._rules, () {
      super._rules = value;
    });
  }

  late final _$getRulesAsyncAction =
      AsyncAction('_RulesStore.getRules', context: context);

  @override
  Future<void> getRules() {
    return _$getRulesAsyncAction.run(() => super.getRules());
  }

  late final _$_RulesStoreActionController =
      ActionController(name: '_RulesStore', context: context);

  @override
  void refresh() {
    final _$actionInfo =
        _$_RulesStoreActionController.startAction(name: '_RulesStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_RulesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_personal_info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChangePersonalInfoStore on _ChangePersonalInfoStore, Store {
  Computed<bool>? _$canApplyComputed;

  @override
  bool get canApply =>
      (_$canApplyComputed ??= Computed<bool>(() => super.canApply,
              name: '_ChangePersonalInfoStore.canApply'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_ChangePersonalInfoStore._isLoading', context: context);

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
      Atom(name: '_ChangePersonalInfoStore._error', context: context);

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

  late final _$firstNameAtom =
      Atom(name: '_ChangePersonalInfoStore.firstName', context: context);

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  late final _$lastNameAtom =
      Atom(name: '_ChangePersonalInfoStore.lastName', context: context);

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$_ChangePersonalInfoStoreActionController =
      ActionController(name: '_ChangePersonalInfoStore', context: context);

  @override
  void init() {
    final _$actionInfo = _$_ChangePersonalInfoStoreActionController.startAction(
        name: '_ChangePersonalInfoStore.init');
    try {
      return super.init();
    } finally {
      _$_ChangePersonalInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void applyChanges() {
    final _$actionInfo = _$_ChangePersonalInfoStoreActionController.startAction(
        name: '_ChangePersonalInfoStore.applyChanges');
    try {
      return super.applyChanges();
    } finally {
      _$_ChangePersonalInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
lastName: ${lastName},
canApply: ${canApply}
    ''';
  }
}

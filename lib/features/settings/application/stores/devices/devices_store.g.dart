// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DevicesStore on _DevicesStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_DevicesStore._isLoading', context: context);

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
      Atom(name: '_DevicesStore._error', context: context);

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

  late final _$_thisSessionAtom =
      Atom(name: '_DevicesStore._thisSession', context: context);

  DeviceSessionVM? get thisSession {
    _$_thisSessionAtom.reportRead();
    return super._thisSession;
  }

  @override
  DeviceSessionVM? get _thisSession => thisSession;

  @override
  set _thisSession(DeviceSessionVM? value) {
    _$_thisSessionAtom.reportWrite(value, super._thisSession, () {
      super._thisSession = value;
    });
  }

  late final _$_otherSessionAtom =
      Atom(name: '_DevicesStore._otherSession', context: context);

  List<DeviceSessionVM> get otherSession {
    _$_otherSessionAtom.reportRead();
    return super._otherSession;
  }

  @override
  List<DeviceSessionVM> get _otherSession => otherSession;

  @override
  set _otherSession(List<DeviceSessionVM> value) {
    _$_otherSessionAtom.reportWrite(value, super._otherSession, () {
      super._otherSession = value;
    });
  }

  late final _$_DevicesStoreActionController =
      ActionController(name: '_DevicesStore', context: context);

  @override
  void load() {
    final _$actionInfo =
        _$_DevicesStoreActionController.startAction(name: '_DevicesStore.load');
    try {
      return super.load();
    } finally {
      _$_DevicesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_DevicesStoreActionController.startAction(
        name: '_DevicesStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_DevicesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void terminate({required String sessionID}) {
    final _$actionInfo = _$_DevicesStoreActionController.startAction(
        name: '_DevicesStore.terminate');
    try {
      return super.terminate(sessionID: sessionID);
    } finally {
      _$_DevicesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_monologue_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateMonologueStore on _CreateMonologueStore, Store {
  Computed<bool>? _$canGoNextComputed;

  @override
  bool get canGoNext =>
      (_$canGoNextComputed ??= Computed<bool>(() => super.canGoNext,
              name: '_CreateMonologueStore.canGoNext'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_CreateMonologueStore._isLoading', context: context);

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
      Atom(name: '_CreateMonologueStore._error', context: context);

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

  late final _$chatNameAtom =
      Atom(name: '_CreateMonologueStore.chatName', context: context);

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
      Atom(name: '_CreateMonologueStore.photo', context: context);

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

  late final _$_CreateMonologueStoreActionController =
      ActionController(name: '_CreateMonologueStore', context: context);

  @override
  void createChat() {
    final _$actionInfo = _$_CreateMonologueStoreActionController.startAction(
        name: '_CreateMonologueStore.createChat');
    try {
      return super.createChat();
    } finally {
      _$_CreateMonologueStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chatName: ${chatName},
photo: ${photo},
canGoNext: ${canGoNext}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LogInStore on _LogInStore, Store {
  Computed<bool>? _$canLogInComputed;

  @override
  bool get canLogIn => (_$canLogInComputed ??=
          Computed<bool>(() => super.canLogIn, name: '_LogInStore.canLogIn'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_LogInStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_LogInStore._error', context: context);

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

  late final _$emailAtom = Atom(name: '_LogInStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LogInStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$logInAsyncAction =
      AsyncAction('_LogInStore.logIn', context: context);

  @override
  Future<void> logIn() {
    return _$logInAsyncAction.run(() => super.logIn());
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
canLogIn: ${canLogIn}
    ''';
  }
}

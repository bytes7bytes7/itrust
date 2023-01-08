import 'dart:async';

import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../domain/service/auth_service.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store, Errorable, Loadable {
  _AuthStore({
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @action
  Future<void> authenticate({
    required String login,
    required String password,
  }) async {
    await _wrap(() async {
      try {
        await _authService.authenticate(
          login: login,
          password: password,
        );
      } catch (e) {
        _error = e;
      }
    });
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = null;

    await callback();

    _isLoading = false;
  }
}

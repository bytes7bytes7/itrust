import 'dart:async';

import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/domain/persistence/user_repository.dart';
import '../../../domain/persistence/auth_repository.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store, Errorable, Loadable {
  _AuthStore({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _userRepository = userRepository;

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

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
        final user = await _authRepository.authenticate(
          login: login,
          password: password,
        );

        _userRepository.user = user;
      } catch (e) {
        _error = e;
      }
    });
  }

  @action
  Future<void> logOut() async {
    await _wrap(() async {
      try {
        await _authRepository.logOut();
        _userRepository.user = null;
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

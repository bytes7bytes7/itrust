import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/domain/exception/exception.dart';
import '../../../../common/domain/service/auth_service.dart';
import '../../coordinator/auth_coordinator.dart';
import '../../provider/auth_string_provider.dart';

part 'auth_store.g.dart';

@injectable
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  _AuthStore({
    required AuthService authService,
    required AuthCoordinator authCoordinator,
    required AuthStringProvider authStringProvider,
  })  : _authService = authService,
        _authCoordinator = authCoordinator,
        _authStringProvider = authStringProvider;

  final AuthService _authService;
  final AuthCoordinator _authCoordinator;
  final AuthStringProvider _authStringProvider;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @observable
  String login = '';

  @observable
  String password = '';

  @computed
  bool get canLogIn => !_isLoading && login.isNotEmpty && password.isNotEmpty;

  @action
  void authenticate() {
    _wrap(() async {
      try {
        await _authService.authenticate(
          login: login,
          password: password,
        );
      } on WrongPasswordException {
        _error = _authStringProvider.wrongPassword;
      } on UserNotFoundException {
        _error = _authStringProvider.userNotFound;
      } on TooManyRequestsException {
        _error = _authStringProvider.tooManyRequests;
      } catch (e) {
        _error = _authStringProvider.unknownError;
      }
    });
  }

  void onRulesButtonPressed() {
    _authCoordinator.onRulesButtonPressed();
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}

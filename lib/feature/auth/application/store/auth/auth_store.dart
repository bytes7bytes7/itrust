import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/domain/exception/wrong_password_exception.dart';
import '../../../../common/domain/service/auth_service.dart';
import '../../coordinator/auth_coordinator.dart';

part 'auth_store.g.dart';

final _logger = Logger('$AuthStore');

@injectable
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  _AuthStore({
    required AuthService authService,
    required AuthCoordinator authCoordinator,
  })  : _authService = authService,
        _authCoordinator = authCoordinator {
    _userSub = _authService.onIsLoggedInChanged.listen(_onUserChanged);
  }

  final AuthService _authService;
  final AuthCoordinator _authCoordinator;

  StreamSubscription? _userSub;
  bool? _isLoggedIn;

  @disposeMethod
  void dispose() {
    _userSub?.cancel();
  }

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
        // TODO: remake
        _error = 'wrong passwd';
      } catch (e) {
        _error = 'unk error';
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

  Future<void> _onUserChanged(bool isLoggedIn) async {
    try {
      final lastIsLoggedIn = _isLoggedIn;

      if (!isLoggedIn && lastIsLoggedIn != false) {
        await _authService.logOut();
      }

      _isLoggedIn = isLoggedIn;
    } catch (e) {
      _logger.severe(e);
    }
  }
}

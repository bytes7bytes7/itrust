import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/service/auth_service.dart';

part 'auth_store.g.dart';

final _logger = Logger('$AuthStore');

@singleton
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store, Errorable, Loadable {
  _AuthStore({
    required AuthService authService,
  }) : _authService = authService {
    _userSub = _authService.users.listen(_onUserChanged);
  }

  final AuthService _authService;
  StreamSubscription? _userSub;

  @disposeMethod
  void dispose() {
    _userSub?.cancel();
  }

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @readonly
  bool _isLoggedIn = false;

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

  Future<void> _onUserChanged(User? user) async {
    try {
      if (user == null && _isLoggedIn) {
        await _authService.logOut();
        _isLoggedIn = false;
      } else if (user != null && !_isLoggedIn) {
        await _authService.finishAuthentication();
        _isLoggedIn = true;
      }
    } catch (e) {
      _logger.severe(e);
    }
  }
}

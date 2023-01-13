import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../l10n/l10n.dart';
import '../../../../../main/infrastructure/router/router.dart';
import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/domain/domain.dart';
import '../../../../common/domain/exception/wrong_password_exception.dart';
import '../../../../common/domain/service/auth_service.dart';

part 'auth_store.g.dart';

final _getIt = GetIt.instance;
final _logger = Logger('$AuthStore');

@lazySingleton
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store, Errorable, Loadable {
  _AuthStore({
    required AuthService authService,
  }) : _authService = authService {
    _userSub = _authService.users.listen(_onUserChanged);
  }

  final AuthService _authService;
  StreamSubscription? _userSub;
  final _isLoggedInController = BehaviorSubject<bool>();
  late final _navigatorKey = _getIt.get<NavigatorKey>();

  @disposeMethod
  void dispose() {
    _userSub?.cancel();
    _isLoggedInController.close();
  }

  Stream<bool> get onLoggedInChanged => _isLoggedInController.stream;

  bool? get isLoggedIn => _isLoggedInController.value;

  Future<void> init() async {
    await _isLoggedInController.first;
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
  Future<void> authenticate() async {
    await _wrap(() async {
      try {
        await _authService.authenticate(
          login: login,
          password: password,
        );
      } on WrongPasswordException {
        _error = _l10n.wrong_password;
      } catch (e) {
        _error = _l10n.unknown_error;
      }
    });
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }

  Future<void> _onUserChanged(User? user) async {
    try {
      final lastIsLoggedIn =
          _isLoggedInController.hasValue ? _isLoggedInController.value : null;

      if (user == null && lastIsLoggedIn != false) {
        await _authService.logOut();
        _isLoggedInController.add(false);
      } else if (user != null && lastIsLoggedIn != true) {
        _isLoggedInController.add(true);
      } else {
        _logger.warning(user);
      }
    } catch (e) {
      _logger.severe(e);
    }
  }

  BuildContext get _context {
    final ctx = _navigatorKey.currentContext;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }

  AppLocalizations get _l10n => _context.l10n;
}

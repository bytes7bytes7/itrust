import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/auth_coordinator.dart';
import '../../providers/auth_string_provider.dart';

part 'auth_store.g.dart';

@injectable
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore extends SyncStore with Store {
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
    perform(
      () async {
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
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onRulesButtonPressed() {
    _authCoordinator.onRulesButtonPressed();
  }
}

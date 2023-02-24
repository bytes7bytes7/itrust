import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/auth_coordinator.dart';
import '../../providers/auth_string_provider.dart';

part 'log_in_store.g.dart';

@injectable
class LogInStore = _LogInStore with _$LogInStore;

abstract class _LogInStore extends SyncStore with Store {
  _LogInStore({
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
  String email = '';

  @observable
  String password = '';

  @computed
  bool get canLogIn => !_isLoading && email.isNotEmpty && password.isNotEmpty;

  @action
  void logIn() {
    perform(
      () async {
        try {
          await _authService.logIn(
            email: email,
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

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/log_in_coordinator.dart';
import '../../providers/log_in_string_provider.dart';

part 'log_in_store.g.dart';

@injectable
class LogInStore = _LogInStore with _$LogInStore;

abstract class _LogInStore extends SyncStore with Store {
  _LogInStore({
    required AuthService authService,
    required LogInCoordinator logInCoordinator,
    required LogInStringProvider logInStringProvider,
  })  : _authService = authService,
        _logInCoordinator = logInCoordinator,
        _logInStringProvider = logInStringProvider;

  final AuthService _authService;
  final LogInCoordinator _logInCoordinator;
  final LogInStringProvider _logInStringProvider;

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
  Future<void> logIn() async {
    await perform(
      () async {
        try {
          await _authService.logIn(
            email: email,
            password: password,
          );
        } on ServerNotAvailable {
          _error = _logInStringProvider.serverNotAvailable;
        } on InvalidCredentials {
          _error = _logInStringProvider.invalidCredentials;
        } catch (e) {
          _error = _logInStringProvider.unknownError;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onGoToRegisterButtonPressed() {
    _logInCoordinator.onGoToRegisterButtonPressed();
  }
}

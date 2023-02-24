import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/auth_coordinator.dart';
import '../../providers/auth_string_provider.dart';

part 'register_store.g.dart';

@injectable
class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore extends SyncStore with Store {
  _RegisterStore({
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

  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @computed
  bool get canLogIn => !_isLoading && email.isNotEmpty && password.isNotEmpty;

  @action
  void register() {
    perform(
      () async {
        try {
          await _authService.register(
            email: email,
            password: password,
            firstName: firstName,
            lastName: lastName,
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

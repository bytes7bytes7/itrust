import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../coordinators/register_coordinator.dart';
import '../../providers/register_string_provider.dart';

part 'register_store.g.dart';

@injectable
class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore extends SyncStore with Store {
  _RegisterStore({
    required AuthService authService,
    required RegisterCoordinator registerCoordinator,
    required RegisterStringProvider registerStringProvider,
  })  : _authService = authService,
        _registerCoordinator = registerCoordinator,
        _registerStringProvider = registerStringProvider;

  final AuthService _authService;
  final RegisterCoordinator _registerCoordinator;
  final RegisterStringProvider _registerStringProvider;

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

  @observable
  bool agreeToTerms = false;

  @computed
  bool get canRegister =>
      !_isLoading &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      firstName.isNotEmpty &&
      lastName.isNotEmpty &&
      agreeToTerms;

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
        } on ServerNotAvailable {
          _error = _registerStringProvider.serverNotAvailable;
        } on EmailIsAlreadyInUse {
          _error = _registerStringProvider.emailIsAlreadyInUse;
        } catch (e) {
          _error = _registerStringProvider.unknownError;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onRulesButtonPressed() {
    _registerCoordinator.onRulesButtonPressed();
  }

  void onGoToLogInButtonPressed() {
    _registerCoordinator.onGoToLogInButtonPressed();
  }
}

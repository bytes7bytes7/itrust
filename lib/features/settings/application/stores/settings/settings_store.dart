import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../coordinators/settings_coordinator.dart';

part 'settings_store.g.dart';

@injectable
class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore extends SyncStore with Store {
  _SettingsStore({
    required AuthService authService,
    required SettingsCoordinator settingsCoordinator,
  })  : _authService = authService,
        _settingsCoordinator = settingsCoordinator;

  final AuthService _authService;
  final SettingsCoordinator _settingsCoordinator;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @action
  void logOut() {
    perform(
      () async {
        await _authService.logOut();
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _settingsCoordinator.onBackButtonPressed();
  }
}

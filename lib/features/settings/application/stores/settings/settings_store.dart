import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../coordinators/settings_coordinator.dart';
import '../../providers/settings_string_provider.dart';

part 'settings_store.g.dart';

@injectable
class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore extends SyncStore with Store {
  _SettingsStore({
    required AuthService authService,
    required SettingsCoordinator settingsCoordinator,
    required SettingsStringProvider settingsStringProvider,
  })  : _authService = authService,
        _settingsCoordinator = settingsCoordinator,
        _settingsStringProvider = settingsStringProvider;

  final AuthService _authService;
  final SettingsCoordinator _settingsCoordinator;
  final SettingsStringProvider _settingsStringProvider;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @action
  void logOut() {
    perform(
      () async {
        try {
          await _authService.logOut();
        } on ServerNotAvailable {
          _error = _settingsStringProvider.serverNotAvailable;
        } catch (e) {
          _error = _settingsStringProvider.unknownError;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _settingsCoordinator.onBackButtonPressed();
  }
}

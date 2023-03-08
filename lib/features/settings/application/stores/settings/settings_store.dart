import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/account_service.dart';
import '../../coordinators/settings_coordinator.dart';
import '../../providers/settings_string_provider.dart';
import '../../view_models/end_user_vm/end_user_vm.dart';

part 'settings_store.g.dart';

@singleton
class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore extends SyncStore with Store {
  _SettingsStore({
    required AuthService authService,
    required SettingsCoordinator settingsCoordinator,
    required SettingsStringProvider settingsStringProvider,
    required AccountService accountService,
    required Mapster mapster,
  })  : _authService = authService,
        _settingsCoordinator = settingsCoordinator,
        _settingsStringProvider = settingsStringProvider,
        _accountService = accountService,
        _mapster = mapster {
    _meSub = _accountService.onMeChanged.listen((meOrNull) {
      if (meOrNull != null) {
        _me = _mapster.map1(meOrNull, To<EndUserVM>());
      }
    });
  }

  final AuthService _authService;
  final AccountService _accountService;
  final SettingsCoordinator _settingsCoordinator;
  final SettingsStringProvider _settingsStringProvider;
  final Mapster _mapster;
  StreamSubscription? _meSub;

  void dispose() {
    _meSub?.cancel();
  }

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  EndUserVM? _me;

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

  void onAccountButtonPressed() {
    _settingsCoordinator.onAccountButtonPressed();
  }
}

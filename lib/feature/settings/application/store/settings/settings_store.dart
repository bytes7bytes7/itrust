import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/settings_service.dart';
import '../../coordinator/settings_coordinator.dart';

part 'settings_store.g.dart';

@injectable
class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  _SettingsStore({
    required SettingsService settingsService,
    required SettingsCoordinator settingsCoordinator,
  })  : _settingsService = settingsService,
        _settingsCoordinator = settingsCoordinator;

  final SettingsService _settingsService;
  final SettingsCoordinator _settingsCoordinator;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @action
  Future<void> logOut() async {
    await _wrap(() async {
      await _settingsService.logOut();
    });
  }

  void onBackButtonPressed() {
    _settingsCoordinator.onBackButtonPressed();
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}

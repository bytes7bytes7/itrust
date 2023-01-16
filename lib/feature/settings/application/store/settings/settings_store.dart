import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/settings_service.dart';

part 'settings_store.g.dart';

@injectable
class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  _SettingsStore({
    required SettingsService settingsService,
  }) : _settingsService = settingsService;

  final SettingsService _settingsService;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @action
  void onBackButtonPressed() {
    _settingsService.onBackButtonPressed();
  }

  @action
  Future<void> logOut() async {
    await _wrap(() async {
      await _settingsService.logOut();
    });
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}

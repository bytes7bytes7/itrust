import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/service/settings_service.dart';

part 'settings_store.g.dart';

@singleton
class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store, Loadable, Errorable {
  _SettingsStore({
    required SettingsService settingsService,
  }) : _settingsService = settingsService;

  final SettingsService _settingsService;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @action
  Future<void> logOut() async {
    await _wrap(() async {
      await _settingsService.logOut();
    });
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = null;

    await callback();

    _isLoading = false;
  }
}

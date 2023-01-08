import 'dart:async';

import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/persistence/user_repository.dart';
import '../../../domain/persistence/settings_repository.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store, Loadable, Errorable {
  _SettingsStore({
    required SettingsRepository settingsRepository,
    required UserRepository userRepository,
  })  : _settingsRepository = settingsRepository,
        _userRepository = userRepository;

  final SettingsRepository _settingsRepository;
  final UserRepository _userRepository;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @action
  Future<void> changeName({required String name}) async {
    await _wrap(() async {
      try {
        final user = await _settingsRepository.changeName(name: name);

        _userRepository.user = user;
      } catch (e) {
        _error = e;
      }
    });
  }

  // TODO: add other methods

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = null;

    await callback();

    _isLoading = false;
  }
}

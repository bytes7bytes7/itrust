import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../coordinators/account_settings_coordinator.dart';

part 'account_settings_store.g.dart';

@injectable
class AccountSettingsStore = _AccountSettingsStore with _$AccountSettingsStore;

abstract class _AccountSettingsStore extends SyncStore with Store {
  _AccountSettingsStore({
    required AccountSettingsCoordinator accountSettingsCoordinator,
  }) : _accountSettingsCoordinator = accountSettingsCoordinator;

  final AccountSettingsCoordinator _accountSettingsCoordinator;

  void onBackButtonPressed() {
    _accountSettingsCoordinator.onBackButtonPressed();
  }

  void onPersonalInfoPressed() {
    _accountSettingsCoordinator.onPersonalInfoPressed();
  }
}

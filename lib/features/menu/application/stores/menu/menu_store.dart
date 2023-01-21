import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../coordinators/menu_coordinator.dart';

part 'menu_store.g.dart';

@injectable
class MenuStore = _MenuStore with _$MenuStore;

abstract class _MenuStore extends SyncStore with Store {
  _MenuStore({
    required MenuCoordinator menuCoordinator,
  }) : _menuCoordinator = menuCoordinator;

  final MenuCoordinator _menuCoordinator;

  @action
  void onSettingsButtonPressed() {
    _menuCoordinator.onSettingsButtonPressed();
  }
}

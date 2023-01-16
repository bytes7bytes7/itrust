import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../coordinator/menu_coordinator.dart';

part 'menu_store.g.dart';

@injectable
class MenuStore = _MenuStore with _$MenuStore;

abstract class _MenuStore with Store {
  _MenuStore({
    required MenuCoordinator menuCoordinator,
  }) : _menuCoordinator = menuCoordinator;

  final MenuCoordinator _menuCoordinator;

  @action
  void onSettingsButtonPressed() {
    _menuCoordinator.onSettingsButtonPressed();
  }
}

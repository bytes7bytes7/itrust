import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../coordinators/menu_coordinator.dart';

part 'menu_store.g.dart';

@singleton
class MenuStore = _MenuStore with _$MenuStore;

abstract class _MenuStore extends SyncStore with Store {
  _MenuStore({
    required MenuCoordinator menuCoordinator,
    required EndUserRepository endUserRepository,
  })  : _menuCoordinator = menuCoordinator,
        _endUserRepository = endUserRepository;

  final MenuCoordinator _menuCoordinator;
  final EndUserRepository _endUserRepository;

  @readonly
  String? _myID;

  @action
  void loadMe() {
    final me = _endUserRepository.me;

    if (me != null) {
      _myID = me.id.str;
    }
  }

  void onSettingsButtonPressed() {
    _menuCoordinator.onSettingsButtonPressed();
  }

  void onFriendsButtonPressed(String userID) {
    _menuCoordinator.onFriendsButtonPressed(userID);
  }
}

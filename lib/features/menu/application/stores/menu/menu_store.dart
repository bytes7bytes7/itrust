import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../coordinators/menu_coordinator.dart';
import '../../providers/menu_string_provider.dart';

part 'menu_store.g.dart';

@singleton
class MenuStore = _MenuStore with _$MenuStore;

abstract class _MenuStore extends SyncStore with Store {
  _MenuStore({
    required MenuCoordinator menuCoordinator,
    required MenuStringProvider menuStringProvider,
    required EndUserRepository endUserRepository,
  })  : _menuCoordinator = menuCoordinator,
        _menuStringProvider = menuStringProvider,
        _endUserRepository = endUserRepository;

  final MenuCoordinator _menuCoordinator;
  final MenuStringProvider _menuStringProvider;
  final EndUserRepository _endUserRepository;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _myID;

  @action
  void loadMe() {
    perform(
      () {
        final me = _endUserRepository.me;

        if (me != null) {
          _myID = me.id.str;
        } else {
          _error = _menuStringProvider.canNotLoadMyself;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onSettingsButtonPressed() {
    _menuCoordinator.onSettingsButtonPressed();
  }

  void onMyProfileButtonPressed() {
    final id = _myID;

    if (id == null) {
      return;
    }

    _menuCoordinator.onMyProfileButtonPressed(userID: id);
  }

  void onFriendsButtonPressed(String userID) {
    _menuCoordinator.onFriendsButtonPressed(userID: userID);
  }
}

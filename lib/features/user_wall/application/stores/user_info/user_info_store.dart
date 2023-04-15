import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/end_user_repository.dart';
import '../../../../common/common.dart';
import '../../../domain/services/user_info_service.dart';
import '../../coordinators/coordinators.dart';
import '../../providers/user_info_string_provider.dart';
import '../../view_models/user_info_vm/user_info_vm.dart';
import '../user_posts/user_posts_store.dart';

part 'user_info_store.g.dart';

@injectable
class UserInfoStore = _UserInfoStore with _$UserInfoStore;

abstract class _UserInfoStore extends SyncStore with Store {
  _UserInfoStore({
    required this.userPostsStore,
    required UserInfoService userInfoService,
    required UserInfoStringProvider userInfoStringProvider,
    required UserWallCoordinator coordinator,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _userInfoService = userInfoService,
        _userInfoStringProvider = userInfoStringProvider,
        _coordinator = coordinator,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final UserPostsStore userPostsStore;
  final UserInfoService _userInfoService;
  final UserInfoStringProvider _userInfoStringProvider;
  final UserWallCoordinator _coordinator;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;
  var _isInitialized = false;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _myID;

  @readonly
  String? _userID;

  @readonly
  UserInfoVM? _userInfo;

  @computed
  bool get hasError => _error.isNotEmpty;

  @computed
  bool get showActions => _myID != _userID;

  void init(String userID) {
    if (!_isInitialized) {
      _userID = userID;
      _myID = _endUserRepository.me?.id.str;
      _isInitialized = true;
    }
  }

  @action
  void loadInfo({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo =
              await _userInfoService.loadInfo(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());

          userPostsStore.loadPosts();
        } catch (e) {
          _error = _userInfoStringProvider.canNotLoadUserInfo;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    loadInfo(refresh: true);
    userPostsStore.refresh();
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onFriendsPressed() {
    final userID = _userID;

    if (userID == null) {
      return;
    }

    _coordinator.onFriendsPressed(userID: userID);
  }

  void onSubscribersPressed() {
    final userID = _userID;

    if (userID == null) {
      return;
    }

    _coordinator.onSubscribersPressed(userID: userID);
  }
}

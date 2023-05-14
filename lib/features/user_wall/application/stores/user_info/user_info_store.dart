import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/end_user_repository.dart';
import '../../../../common/common.dart';
import '../../coordinators/coordinators.dart';
import '../../providers/user_info_string_provider.dart';
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

  @readonly
  bool _isActionLoading = false;

  @computed
  bool get showActionBtns => _myID != _userID;

  @computed
  bool get showAddFriendBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    if (userInfo.amIFriend) {
      return false;
    }

    if (userInfo.didISentFriendBid) {
      return false;
    }

    if (userInfo.amISubscriber) {
      return false;
    }

    if (userInfo.areTheySubscribedToMe) {
      return false;
    }

    if (userInfo.haveIFriendBidFromThisUser) {
      return false;
    }

    return true;
  }

  @computed
  bool get showCancelRequestBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    return userInfo.didISentFriendBid;
  }

  @computed
  bool get showRemoveFriendBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    return userInfo.amIFriend;
  }

  @computed
  bool get showRemoveSubscriberBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    return userInfo.areTheySubscribedToMe;
  }

  @computed
  bool get showAcceptRequestBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    return userInfo.haveIFriendBidFromThisUser;
  }

  @computed
  bool get showUnsubscribeBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    return userInfo.amISubscriber;
  }

  @computed
  bool get showMessageBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return true;
    }

    return !userInfo.haveIFriendBidFromThisUser;
  }

  @computed
  bool get showDeclineRequestBtn {
    if (!showActionBtns) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return false;
    }

    return userInfo.haveIFriendBidFromThisUser;
  }

  @computed
  bool get canMessageBtnBePressed {
    if (!showMessageBtn) {
      return false;
    }

    final userInfo = _userInfo;

    if (userInfo == null) {
      return false;
    }

    if (userInfo is! EndUserInfoVM) {
      return true;
    }

    return userInfo.amIFriend;
  }

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

  @action
  void sendFriendBid() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo =
              await _userInfoService.sendFriendBid(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotSendFriendBid;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void cancelFriendBid() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo =
              await _userInfoService.cancelFriendBid(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotCancelFriendBid;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void removeFriend() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo =
              await _userInfoService.removeFriend(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotRemoveFriend;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void removeSubscriber() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo = await _userInfoService
              .removeSubscriber(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotRemoveSubscriber;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void acceptFriendBid() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo =
              await _userInfoService.acceptFriendBid(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotAcceptFriendBid;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void declineFriendBid() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo = await _userInfoService
              .declineFriendBid(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotDeclineFriendBid;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void unsubscribe() {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final userInfo =
              await _userInfoService.unsubscribe(UserID.fromString(userID));

          _userInfo = _mapster.map1(userInfo, To<UserInfoVM>());
        } catch (e) {
          _error = _userInfoStringProvider.canNotUnsubscribe;
        }
      },
      setIsLoading: (v) => _isActionLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onMessageButtonPressed() {
    final userID = _userID;
    final me = _endUserRepository.me;

    if (userID == null || me == null) {
      return;
    }

    _coordinator.onMessageButtonPressed(
      firstUserID: me.id.str,
      secondUserID: userID,
    );
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

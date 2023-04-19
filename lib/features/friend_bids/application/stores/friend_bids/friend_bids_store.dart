import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/friend_bids_service.dart';
import '../../coordinators/friend_bids_coordinator.dart';
import '../../providers/friend_bids_string_provider.dart';
import '../inbox_friend_bids/inbox_friend_bids_store.dart';
import '../outbox_friend_bids/outbox_friend_bids_store.dart';

part 'friend_bids_store.g.dart';

const _defaultTabIndex = 0;
const _inboxBidsTabIndex = 0;
const _outboxBidsTabIndex = 1;
const _unknownAmount = '?';

@injectable
class FriendBidsStore = _FriendBidsStore with _$FriendBidsStore;

abstract class _FriendBidsStore extends SyncStore with Store {
  _FriendBidsStore({
    required this.inboxStore,
    required this.outboxStore,
    required FriendBidsService friendBidsService,
    required UserInfoService userInfoService,
    required FriendBidsStringProvider friendBidsStringProvider,
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required FriendBidsCoordinator coordinator,
    required EndUserRepository endUserRepository,
  })  : _friendBidsService = friendBidsService,
        _userInfoService = userInfoService,
        _friendBidsStringProvider = friendBidsStringProvider,
        _beautifiedNumberProvider = beautifiedNumberProvider,
        _coordinator = coordinator,
        _endUserRepository = endUserRepository;

  final InboxFriendBidsStore inboxStore;
  final OutboxFriendBidsStore outboxStore;
  final FriendBidsService _friendBidsService;
  final UserInfoService _userInfoService;
  final FriendBidsStringProvider _friendBidsStringProvider;
  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final FriendBidsCoordinator _coordinator;
  final EndUserRepository _endUserRepository;

  final int tabsAmount = 2;

  final loadingActionUserIDs = ObservableSet<String>();

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  UserID? _userID;

  @readonly
  int _currentTabIndex = _defaultTabIndex;

  @readonly
  String _inboxBidsAmount = _unknownAmount;

  @readonly
  String _outboxBidsAmount = _unknownAmount;

  @action
  void loadMe() {
    final me = _endUserRepository.me;

    if (me != null) {
      final id = me.id.str;

      _userID = UserID.fromString(id);

      inboxStore.init(id);
      outboxStore.init(id);
    } else {
      _error = _friendBidsStringProvider.canNotLoadMyself;
    }
  }

  @action
  void load() {
    perform(
      () async {
        try {
          final data = await _friendBidsService.getFriendBidsAmount();

          _inboxBidsAmount =
              _beautifiedNumberProvider.beautify(data.inboxAmount);
          _outboxBidsAmount =
              _beautifiedNumberProvider.beautify(data.outboxAmount);
        } catch (e) {
          _error = _friendBidsStringProvider.canNotLoadFriendBidsAmount;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );

    switch (_currentTabIndex) {
      case _inboxBidsTabIndex:
        inboxStore.loadBids();
        break;
      case _outboxBidsTabIndex:
        outboxStore.loadBids();
        break;
    }
  }

  @action
  void refresh() {
    inboxStore.resetIsLoaded();
    outboxStore.resetIsLoaded();

    load();
  }

  @action
  void selectTab({required int index}) {
    _currentTabIndex = index;

    switch (index) {
      case _inboxBidsTabIndex:
        if (!inboxStore.isLoaded) {
          inboxStore.loadBids();
        }

        break;
      case _outboxBidsTabIndex:
        if (!outboxStore.isLoaded) {
          outboxStore.loadBids();
        }

        break;
    }
  }

  @action
  void acceptBid(String userID) {
    perform(
      () async {
        try {
          final userInfo =
              await _userInfoService.acceptFriendBid(UserID.fromString(userID));

          if (userInfo is EndUserInfo) {
            if (!userInfo.haveIFriendBidFromThisUser) {
              load();
            }
          }
        } catch (e) {
          _error = _friendBidsStringProvider.canNotAcceptFriendBid;
        }
      },
      setIsLoading: (v) {
        if (v) {
          loadingActionUserIDs.add(userID);
        } else {
          loadingActionUserIDs.remove(userID);
        }
      },
      removeError: () => _error = '',
    );
  }

  @action
  void declineBid(String userID) {
    perform(
      () async {
        try {
          final userInfo = await _userInfoService
              .declineFriendBid(UserID.fromString(userID));

          if (userInfo is EndUserInfo) {
            if (!userInfo.haveIFriendBidFromThisUser) {
              load();
            }
          }
        } catch (e) {
          _error = _friendBidsStringProvider.canNotDeclineFriendBid;
        }
      },
      setIsLoading: (v) {
        if (v) {
          loadingActionUserIDs.add(userID);
        } else {
          loadingActionUserIDs.remove(userID);
        }
      },
      removeError: () => _error = '',
    );
  }

  @action
  void cancelBid(String userID) {
    perform(
      () async {
        try {
          final userInfo =
              await _userInfoService.cancelFriendBid(UserID.fromString(userID));

          if (userInfo is EndUserInfo) {
            if (!userInfo.didISentFriendBid) {
              load();
            }
          }
        } catch (e) {
          _error = _friendBidsStringProvider.canNotCancelFriendBid;
        }
      },
      setIsLoading: (v) {
        if (v) {
          loadingActionUserIDs.add(userID);
        } else {
          loadingActionUserIDs.remove(userID);
        }
      },
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onUserAvatarPressed(String userID) {
    _coordinator.onUserAvatarPressed(userID: userID);
  }
}

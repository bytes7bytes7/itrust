import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/end_user_repository.dart';
import '../../../../common/application/providers/beautified_number_provider.dart';
import '../../../../common/application/stores/sync_store.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/people_service.dart';
import '../../coordinators/people_coordinator.dart';
import '../../providers/people_string_provider.dart';
import '../all_users/all_users_store.dart';
import '../friends/friends_store.dart';
import '../subscribers/subscribers_store.dart';
import '../subscriptions/subscriptions_store.dart';

part 'people_store.g.dart';

const _defaultTabIndex = 0;
const _allUsersTabIndex = 0;
const _friendsTabIndex = 1;
const _subscribersTabIndex = 2;
const _subscriptionsTabIndex = 3;
const _unknownAmount = '?';

typedef VoidCallback = void Function();

@injectable
class PeopleStore = _PeopleStore with _$PeopleStore;

abstract class _PeopleStore extends SyncStore with Store {
  _PeopleStore({
    required this.allUsersStore,
    required this.friendsStore,
    required this.subscribersStore,
    required this.subscriptionsStore,
    required PeopleService peopleService,
    required PeopleStringProvider peopleStringProvider,
    required PeopleCoordinator coordinator,
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required EndUserRepository endUserRepository,
  })  : _peopleService = peopleService,
        _peopleStringProvider = peopleStringProvider,
        _coordinator = coordinator,
        _beautifiedNumberProvider = beautifiedNumberProvider,
        _endUserRepository = endUserRepository;

  final AllUsersStore allUsersStore;
  final FriendsStore friendsStore;
  final SubscribersStore subscribersStore;
  final SubscriptionsStore subscriptionsStore;
  final PeopleService _peopleService;
  final PeopleStringProvider _peopleStringProvider;
  final PeopleCoordinator _coordinator;
  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final EndUserRepository _endUserRepository;

  final int tabsAmount = 4;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  UserID? _userID;

  @readonly
  int _currentTabIndex = _defaultTabIndex;

  @readonly
  String _allUsersAmount = _unknownAmount;

  @readonly
  String _friendsAmount = _unknownAmount;

  @readonly
  String _subscribersAmount = _unknownAmount;

  @readonly
  String _subscriptionsAmount = _unknownAmount;

  @action
  void loadMe() {
    final me = _endUserRepository.me;

    if (me != null) {
      final id = me.id.str;

      _userID = UserID.fromString(id);

      allUsersStore.init(id);
      friendsStore.init(id);
      subscribersStore.init(id);
      subscriptionsStore.init(id);
    } else {
      _error = _peopleStringProvider.canNotLoadMyself;
    }
  }

  @action
  Future<void> load() async {
    await perform(
      () async {
        try {
          final data = await _peopleService.getPeopleAmount();

          _allUsersAmount =
              _beautifiedNumberProvider.beautify(data.allUsersAmount);
          _friendsAmount =
              _beautifiedNumberProvider.beautify(data.friendsAmount);
          _subscribersAmount =
              _beautifiedNumberProvider.beautify(data.subscribersAmount);
          _subscriptionsAmount =
              _beautifiedNumberProvider.beautify(data.subscriptionsAmount);
        } catch (e) {
          _error = _peopleStringProvider.canNotLoadPeopleAmount;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );

    switch (_currentTabIndex) {
      case _allUsersTabIndex:
        await allUsersStore.loadUsers();
        break;
      case _friendsTabIndex:
        await friendsStore.loadFriends();
        break;
      case _subscribersTabIndex:
        await subscribersStore.loadSubscribers();
        break;
      case _subscriptionsTabIndex:
        await subscriptionsStore.loadSubscriptions();
        break;
    }
  }

  @action
  void refresh() {
    allUsersStore.resetIsLoaded();
    friendsStore.resetIsLoaded();
    subscribersStore.resetIsLoaded();
    subscriptionsStore.resetIsLoaded();

    load();
  }

  @action
  void selectTab({required int index}) {
    _currentTabIndex = index;

    switch (index) {
      case _allUsersTabIndex:
        if (!allUsersStore.isLoaded) {
          allUsersStore.loadUsers();
        }

        break;
      case _friendsTabIndex:
        if (!friendsStore.isLoaded) {
          friendsStore.loadFriends();
        }

        break;
      case _subscribersTabIndex:
        if (!subscribersStore.isLoaded) {
          subscribersStore.loadSubscribers();
        }

        break;
      case _subscriptionsTabIndex:
        if (!subscriptionsStore.isLoaded) {
          subscriptionsStore.loadSubscriptions();
        }

        break;
    }
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onUserPressed(String userID) {
    _coordinator.onUserPressed(userID: userID);
  }
}

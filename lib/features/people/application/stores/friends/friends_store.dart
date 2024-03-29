import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/value_objects/value_objects.dart';
import '../../../domain/services/people_service.dart';
import '../../coordinators/people_coordinator.dart';
import '../../providers/people_string_provider.dart';

part 'friends_store.g.dart';

@injectable
class FriendsStore = _FriendsStore with _$FriendsStore;

abstract class _FriendsStore extends SyncStore with Store {
  _FriendsStore({
    required PeopleService peopleService,
    required PeopleStringProvider peopleStringProvider,
    required PeopleCoordinator coordinator,
    required Mapster mapster,
  })  : _peopleService = peopleService,
        _peopleStringProvider = peopleStringProvider,
        _coordinator = coordinator,
        _mapster = mapster;

  final PeopleService _peopleService;
  final PeopleStringProvider _peopleStringProvider;
  final PeopleCoordinator _coordinator;
  final Mapster _mapster;
  var _isInitialized = false;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  UserID? _friendsTo;

  @readonly
  List<EndUserVM> _friends = const [];

  @readonly
  bool _isLoaded = false;

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  void init(String id) {
    if (!_isInitialized) {
      _friendsTo = UserID.fromString(id);
      _isInitialized = true;
    }
  }

  @action
  Future<void> loadFriends({
    bool refresh = false,
  }) async {
    await perform(
      () async {
        try {
          final userID = _friendsTo;

          if (userID == null) {
            return;
          }

          final friends = await _peopleService.getFriends(
            friendsTo: userID,
          );

          final friendVMs = <EndUserVM>[];
          for (final friend in friends) {
            friendVMs.add(_mapster.map1(friend, To<EndUserVM>()));
          }

          _friends = friendVMs;
        } catch (e) {
          _error = _peopleStringProvider.canNotLoadUsers;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );

    _isLoaded = true;
  }

  @action
  void refresh() {
    loadFriends(refresh: true);
  }

  @action
  Future<void> loadMoreFriends() async {
    await perform(
      () async {
        try {
          final friendsTo = _friendsTo;
          final lastUserID = _friends.lastOrNull?.id;

          if (friendsTo == null) {
            return;
          }

          final data = await _peopleService.getFriends(
            friendsTo: friendsTo,
            lastUserID:
                lastUserID != null ? UserID.fromString(lastUserID) : null,
          );

          final newFriends = <EndUserVM>[];
          for (final friend in data) {
            newFriends.add(_mapster.map1(friend, To<EndUserVM>()));
          }

          _canLoadMore = false;

          if (newFriends.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _friends = List.of(_friends)..addAll(newFriends);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _peopleStringProvider.canNotLoadUsers;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  void resetIsLoaded() {
    _isLoaded = false;
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onUserPressed(String userID) {
    _coordinator.onUserPressed(userID: userID);
  }
}

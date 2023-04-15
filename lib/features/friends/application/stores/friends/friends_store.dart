import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/value_objects/value_objects.dart';
import '../../../domain/services/friends_service.dart';
import '../../coordinators/friends_coordinator.dart';
import '../../providers/friends_string_provider.dart';

part 'friends_store.g.dart';

@injectable
class FriendsStore = _FriendsStore with _$FriendsStore;

abstract class _FriendsStore extends SyncStore with Store {
  _FriendsStore({
    required FriendsService friendsService,
    required FriendsStringProvider friendsStringProvider,
    required FriendsCoordinator coordinator,
    required Mapster mapster,
  })  : _friendsService = friendsService,
        _friendsStringProvider = friendsStringProvider,
        _coordinator = coordinator,
        _mapster = mapster;

  final FriendsService _friendsService;
  final FriendsStringProvider _friendsStringProvider;
  final FriendsCoordinator _coordinator;
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
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  void init(String id) {
    if (!_isInitialized) {
      _friendsTo = UserID.fromString(id);
      _isInitialized = true;
    }
  }

  @action
  void loadFriends({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final friendsTo = _friendsTo;

          if (friendsTo == null) {
            return;
          }

          final friends = await _friendsService.getFriends(
            friendsTo: friendsTo,
          );

          final friendVMs = <EndUserVM>[];
          for (final friend in friends) {
            friendVMs.add(_mapster.map1(friend, To<EndUserVM>()));
          }

          _friends = friendVMs;
        } catch (e) {
          _error = _friendsStringProvider.canNotLoadFriends;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    loadFriends(refresh: true);
  }

  @action
  void loadMoreFriends() {
    perform(
      () async {
        try {
          final friendsTo = _friendsTo;
          final lastUserID = _friends.lastOrNull?.id;

          if (friendsTo == null) {
            return;
          }

          final data = await _friendsService.getFriends(
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

          _error = _friendsStringProvider.canNotLoadFriends;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onUserPressed(String userID) {
    _coordinator.onUserPressed(userID);
  }
}

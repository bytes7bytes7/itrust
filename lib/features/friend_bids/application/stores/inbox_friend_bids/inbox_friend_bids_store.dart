import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/friend_bids_service.dart';
import '../../providers/friend_bids_string_provider.dart';

part 'inbox_friend_bids_store.g.dart';

@injectable
class InboxFriendBidsStore = _InboxFriendBidsStore with _$InboxFriendBidsStore;

abstract class _InboxFriendBidsStore extends SyncStore with Store {
  _InboxFriendBidsStore({
    required FriendBidsService friendBidsService,
    required FriendBidsStringProvider friendBidsStringProvider,
    required Mapster mapster,
  })  : _friendBidsService = friendBidsService,
        _friendBidsStringProvider = friendBidsStringProvider,
        _mapster = mapster;

  final FriendBidsService _friendBidsService;
  final FriendBidsStringProvider _friendBidsStringProvider;
  final Mapster _mapster;
  var _isInitialized = false;


  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  UserID? _userID;

  @readonly
  List<UserVM> _users = const [];

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
      _userID = UserID.fromString(id);
      _isInitialized = true;
    }
  }

  @action
  void loadBids({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final users = await _friendBidsService.getInboxFriendBids();

          final userVMs = <UserVM>[];
          for (final user in users) {
            userVMs.add(_mapster.map1(user, To<UserVM>()));
          }

          _users = userVMs;
        } catch (e) {
          _error = _friendBidsStringProvider.canNotLoadInboxFriendBids;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );

    _isLoaded = true;
  }

  @action
  void refresh() {
    loadBids(refresh: true);
  }

  @action
  void loadMoreBids() {
    perform(
      () async {
        try {
          final lastUserID = _users.lastOrNull?.id;

          final data = await _friendBidsService.getInboxFriendBids(
            lastUserID:
                lastUserID != null ? UserID.fromString(lastUserID) : null,
          );

          final newUsers = <UserVM>[];
          for (final user in data) {
            newUsers.add(_mapster.map1(user, To<UserVM>()));
          }

          _canLoadMore = false;

          if (newUsers.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _users = List.of(_users)..addAll(newUsers);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _friendBidsStringProvider.canNotLoadInboxFriendBids;
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
}

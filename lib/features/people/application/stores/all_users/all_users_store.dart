import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/stores/sync_store.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/people_service.dart';
import '../../providers/people_string_provider.dart';

part 'all_users_store.g.dart';

@injectable
class AllUsersStore = _AllUsersStore with _$AllUsersStore;

abstract class _AllUsersStore extends SyncStore with Store {
  _AllUsersStore({
    required PeopleService peopleService,
    required PeopleStringProvider peopleStringProvider,
    required Mapster mapster,
  })  : _peopleService = peopleService,
        _peopleStringProvider = peopleStringProvider,
        _mapster = mapster;

  final PeopleService _peopleService;
  final PeopleStringProvider _peopleStringProvider;
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

  void init(String id) {
    if (!_isInitialized) {
      _userID = UserID.fromString(id);
      _isInitialized = true;
    }
  }

  @action
  void loadUsers({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final users = await _peopleService.getAllUsers();

          final userVMs = <UserVM>[];
          for (final user in users) {
            userVMs.add(_mapster.map1(user, To<UserVM>()));
          }

          _users = userVMs;
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
    loadUsers(refresh: true);
  }

  @action
  void loadMoreUsers() {
    perform(
      () async {
        try {
          final lastUserID = _users.lastOrNull?.id;

          final data = await _peopleService.getAllUsers(
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
}

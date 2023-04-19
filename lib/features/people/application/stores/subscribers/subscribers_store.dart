import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/stores/sync_store.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/people_service.dart';
import '../../coordinators/people_coordinator.dart';
import '../../providers/people_string_provider.dart';

part 'subscribers_store.g.dart';

@injectable
class SubscribersStore = _SubscribersStore with _$SubscribersStore;

abstract class _SubscribersStore extends SyncStore with Store {
  _SubscribersStore({
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
  UserID? _userID;

  @readonly
  List<EndUserVM> _subscribers = const [];

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
  void loadSubscribers({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final subscribers = await _peopleService.getSubscribers(
            subscribersOf: userID,
          );

          final subscriberVMs = <EndUserVM>[];
          for (final subscriber in subscribers) {
            subscriberVMs.add(_mapster.map1(subscriber, To<EndUserVM>()));
          }

          _subscribers = subscriberVMs;
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
    loadSubscribers(refresh: true);
  }

  @action
  void loadMoreSubscribers() {
    perform(
      () async {
        try {
          final userID = _userID;
          final lastUserID = _subscribers.lastOrNull?.id;

          if (userID == null) {
            return;
          }

          final data = await _peopleService.getSubscribers(
            subscribersOf: userID,
            lastUserID:
                lastUserID != null ? UserID.fromString(lastUserID) : null,
          );

          final newSubscribers = <EndUserVM>[];
          for (final subscriber in data) {
            newSubscribers.add(_mapster.map1(subscriber, To<EndUserVM>()));
          }

          _canLoadMore = false;

          if (newSubscribers.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _subscribers = List.of(_subscribers)..addAll(newSubscribers);
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

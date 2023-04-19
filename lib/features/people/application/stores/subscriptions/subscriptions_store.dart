import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/stores/sync_store.dart';
import '../../../../common/application/view_models/view_models.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/people_service.dart';
import '../../providers/people_string_provider.dart';

part 'subscriptions_store.g.dart';

@injectable
class SubscriptionsStore = _SubscriptionsStore with _$SubscriptionsStore;

abstract class _SubscriptionsStore extends SyncStore with Store {
  _SubscriptionsStore({
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
  List<EndUserVM> _subscriptions = const [];

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
  void loadSubscriptions({
    bool refresh = false,
  }) {
    perform(
      () async {
        try {
          final userID = _userID;

          if (userID == null) {
            return;
          }

          final subscriptions = await _peopleService.getSubscriptions(
            subscriptionsOf: userID,
          );

          final subscriptionVMs = <EndUserVM>[];
          for (final subscription in subscriptions) {
            subscriptionVMs.add(_mapster.map1(subscription, To<EndUserVM>()));
          }

          _subscriptions = subscriptionVMs;
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
    loadSubscriptions(refresh: true);
  }

  @action
  void loadMoreSubscriptions() {
    perform(
      () async {
        try {
          final userID = _userID;
          final lastUserID = _subscriptions.lastOrNull?.id;

          if (userID == null) {
            return;
          }

          final data = await _peopleService.getSubscriptions(
            subscriptionsOf: userID,
            lastUserID:
                lastUserID != null ? UserID.fromString(lastUserID) : null,
          );

          final newSubscriptions = <EndUserVM>[];
          for (final subscription in data) {
            newSubscriptions.add(_mapster.map1(subscription, To<EndUserVM>()));
          }

          _canLoadMore = false;

          if (newSubscriptions.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _subscriptions = List.of(_subscriptions)..addAll(newSubscriptions);
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

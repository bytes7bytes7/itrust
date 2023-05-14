import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/entities/user/user.dart';
import '../../../../common/domain/value_objects/user_id/user_id.dart';
import '../../../domain/services/create_chat_service.dart';
import '../../coordinators/create_dialogue_coordinator.dart';
import '../../providers/create_dialogue_string_provider.dart';

part 'create_dialogue_store.g.dart';

@injectable
class CreateDialogueStore = _CreateDialogueStore with _$CreateDialogueStore;

abstract class _CreateDialogueStore extends SyncStore with Store {
  _CreateDialogueStore({
    required CreateChatService createChatService,
    required CreateDialogueStringProvider createDialogueStringProvider,
    required EndUserRepository endUserRepository,
    required CreateDialogueCoordinator coordinator,
    required Mapster mapster,
  })  : _createChatService = createChatService,
        _createDialogueStringProvider = createDialogueStringProvider,
        _endUserRepository = endUserRepository,
        _coordinator = coordinator,
        _mapster = mapster;

  final CreateChatService _createChatService;
  final CreateDialogueStringProvider _createDialogueStringProvider;
  final EndUserRepository _endUserRepository;
  final CreateDialogueCoordinator _coordinator;
  final Mapster _mapster;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<UserVM> _users = const [];

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  @action
  void loadUsers() {
    perform(
      () async {
        try {
          final users = await _createChatService.getChatPartners();

          final newUsers = <UserVM>[];
          for (final user in users) {
            if (user is EndUser) {
              newUsers.add(_mapster.map1(user, To<EndUserVM>()));
            } else if (user is StaffUser) {
              newUsers.add(_mapster.map1(user, To<StaffUserVM>()));
            }
          }

          _users = newUsers;
        } catch (e) {
          _error = _createDialogueStringProvider.canNotLoadUsers;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    loadUsers();
  }

  @action
  void loadMoreUsers() {
    perform(
      () async {
        try {
          final lastUserID = _users.lastOrNull?.id;

          final data = await _createChatService.getChatPartners(
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

          _error = _createDialogueStringProvider.canNotLoadUsers;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }

  void onUserPressed({required String userID}) {
    final me = _endUserRepository.me;

    if (me == null) {
      return;
    }

    _coordinator.onUserPressed(
      firstUserID: me.id.str,
      secondUserID: userID,
    );
  }
}

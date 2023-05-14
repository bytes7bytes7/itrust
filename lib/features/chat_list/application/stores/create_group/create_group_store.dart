import 'dart:collection';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../../repositories/interfaces/interfaces.dart';
import '../../../../common/application/application.dart';
import '../../../../common/domain/value_objects/user_id/user_id.dart';
import '../../../domain/services/create_chat_service.dart';
import '../../coordinators/create_group_coordinator.dart';
import '../../providers/create_group_string_provider.dart';

part 'create_group_store.g.dart';

@singleton
class CreateGroupStore = _CreateGroupStore with _$CreateGroupStore;

abstract class _CreateGroupStore extends SyncStore with Store {
  _CreateGroupStore({
    required CreateChatService createChatService,
    required CreateGroupStringProvider createGroupStringProvider,
    required CreateGroupCoordinator coordinator,
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _createChatService = createChatService,
        _createGroupStringProvider = createGroupStringProvider,
        _coordinator = coordinator,
        _beautifiedNumberProvider = beautifiedNumberProvider,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final CreateChatService _createChatService;
  final CreateGroupStringProvider _createGroupStringProvider;
  final CreateGroupCoordinator _coordinator;
  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;

  final _users = HashMap<String, UserVM>();
  var _participantsSelected = false;

  @observable
  String chatName = '';

  @observable
  Uint8List? photo;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  // List of UserID
  @readonly
  List<String> _userIDs = const [];

  // List of UserID
  @readonly
  List<String> _selectedUserIDs = const [];

  @readonly
  bool _canLoadMore = true;

  @readonly
  bool _isLoadingMore = false;

  @readonly
  bool _isCreatingChat = false;

  @computed
  bool get hasError => _error.isNotEmpty;

  @computed
  String get participantsAmount {
    final amount = _selectedUserIDs.length + 1;

    return _beautifiedNumberProvider.beautify(amount);
  }

  @computed
  bool get canCreateChat => chatName.isNotEmpty;

  @action
  void reset() {
    _users.clear();
    _participantsSelected = false;
    chatName = '';
    photo = null;
    _isLoading = false;
    _error = '';
    _userIDs = [];
    _selectedUserIDs = [];
    _canLoadMore = true;
    _isLoadingMore = false;
  }

  @action
  void loadUsers() {
    perform(
      () async {
        try {
          final users = await _createChatService.getChatPartners();

          final newUserIDs = <String>[];
          for (final user in users) {
            final userVM = _mapster.map1(user, To<UserVM>());

            _users[userVM.id] = userVM;

            newUserIDs.add(userVM.id);
          }

          _userIDs = newUserIDs;
        } catch (e) {
          _error = _createGroupStringProvider.canNotLoadUsers;
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
          final lastUserID = _userIDs.lastOrNull;

          final data = await _createChatService.getChatPartners(
            lastUserID:
                lastUserID != null ? UserID.fromString(lastUserID) : null,
          );

          final newUserIDs = <String>[];
          for (final user in data) {
            final userVM = _mapster.map1(user, To<UserVM>());

            _users[userVM.id] = userVM;

            newUserIDs.add(userVM.id);
          }

          _canLoadMore = false;

          if (newUserIDs.isNotEmpty) {
            doAfterDelay(() {
              _canLoadMore = true;
            });
          }

          _userIDs = List.of(_userIDs)..addAll(newUserIDs);
        } catch (e) {
          _canLoadMore = false;
          doAfterDelay(() {
            _canLoadMore = true;
          });

          _error = _createGroupStringProvider.canNotLoadUsers;
        }
      },
      setIsLoading: (v) => _isLoadingMore = v,
      removeError: () => _error = '',
    );
  }

  @action
  void onUserCheckboxTap({required String userID}) {
    final selectedUserIDs = List.of(_selectedUserIDs);

    final index = _userIDs.indexOf(userID);

    if (index == -1) {
      return;
    }

    if (selectedUserIDs.contains(userID)) {
      selectedUserIDs.remove(userID);
    } else {
      selectedUserIDs.add(userID);
    }

    _selectedUserIDs = selectedUserIDs;
  }

  @action
  void createChat() {
    perform(
      () async {
        final title = chatName;

        if (title.isEmpty) {
          return;
        }

        try {
          final chat = await _createChatService.createGroup(
            title: title,
            guestIDs: _selectedUserIDs.map(UserID.fromString).toList(),
            // TODO: add image
            image: null,
          );

          _coordinator.onCreateChatButtonPressed(
            chatID: chat.id.str,
          );
        } catch (e) {
          _error = _createGroupStringProvider.canNotCreateChat;
        }
      },
      setIsLoading: (v) => _isCreatingChat = v,
      removeError: () => _error = '',
    );
  }

  EndUserVM getMe() {
    return _mapster.map1(_endUserRepository.me!, To<EndUserVM>());
  }

  UserVM getSelectedUser(int index) {
    final id = _selectedUserIDs[index];

    return _users[id]!;
  }

  UserVM getNotSelectedUser(int index) {
    var i = -1;
    for (final id in _userIDs) {
      if (!_selectedUserIDs.contains(id)) {
        i++;
      }

      if (i == index) {
        return _users[id]!;
      }
    }

    throw Exception('Unexpected user ID index');
  }

  void onBackButtonPressed() {
    _participantsSelected = false;

    _coordinator.onBackButtonPressed();
  }

  void onFABButtonPressed() {
    if (_participantsSelected) {
      createChat();
    } else {
      _coordinator.onNextButtonPressed();
    }

    _participantsSelected = true;
  }
}

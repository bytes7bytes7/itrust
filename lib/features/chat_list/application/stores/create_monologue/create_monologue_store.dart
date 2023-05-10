import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/stores/sync_store.dart';
import '../../../domain/providers/create_monologue_string_provider.dart';
import '../../../domain/services/create_monologue_service.dart';
import '../../coordinators/create_monologue_coordinator.dart';

part 'create_monologue_store.g.dart';

@injectable
class CreateMonologueStore = _CreateMonologueStore with _$CreateMonologueStore;

abstract class _CreateMonologueStore extends SyncStore with Store {
  _CreateMonologueStore({
    required CreateMonologueService createMonologueService,
    required CreateMonologueCoordinator coordinator,
    required CreateMonologueStringProvider createMonologueStringProvider,
  })  : _createMonologueService = createMonologueService,
        _coordinator = coordinator,
        _createMonologueStringProvider = createMonologueStringProvider;

  final CreateMonologueService _createMonologueService;
  final CreateMonologueCoordinator _coordinator;
  final CreateMonologueStringProvider _createMonologueStringProvider;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @observable
  String chatName = '';

  @observable
  Uint8List? photo;

  // TODO: add photo filename

  @computed
  bool get canGoNext => chatName.isNotEmpty;

  @action
  void createChat() {
    perform(
      () async {
        try {
          final chat = await _createMonologueService.createChat(
            title: chatName,
            // TODO: add image & iconName
            // image: ,
            // iconName: ,
          );

          _coordinator.openChat(chatID: chat.id.str);
        } catch (e) {
          _error = _createMonologueStringProvider.canNotCreateChat;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _coordinator.onBackButtonPressed();
  }
}

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/services/account_service.dart';
import '../../../domain/value_objects/device_session_id/device_session_id.dart';
import '../../coordinators/devices_coordinator.dart';
import '../../providers/devices_string_provider.dart';
import '../../view_models/device_session_vm/device_session_vm.dart';

part 'devices_store.g.dart';

@singleton
class DevicesStore = _DevicesStore with _$DevicesStore;

abstract class _DevicesStore extends SyncStore with Store {
  _DevicesStore({
    required DevicesCoordinator devicesCoordinator,
    required DevicesStringProvider devicesStringProvider,
    required AccountService accountService,
    required Mapster mapster,
  })  : _devicesCoordinator = devicesCoordinator,
  _devicesStringProvider = devicesStringProvider,
        _accountService = accountService,
        _mapster = mapster;

  final AccountService _accountService;
  final DevicesStringProvider _devicesStringProvider;
  final DevicesCoordinator _devicesCoordinator;
  final Mapster _mapster;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  DeviceSessionVM? _thisSession;

  @readonly
  List<DeviceSessionVM> _otherSession = const [];

  @action
  Future<void> load() async {
    await perform(
      () async {
        try {
          final devices = await _accountService.getSessions();

          _thisSession =
              _mapster.map1(devices.thisSession, To<DeviceSessionVM>());
          _otherSession = devices.otherSessions
              .map((e) => _mapster.map1(e, To<DeviceSessionVM>()))
              .toList();
        } catch (e) {
          _error = _devicesStringProvider.canNotLoadSessions;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void refresh() {
    load();
  }

  @action
  Future<void> terminate({
    required String sessionID,
    required String password,
  }) async {
    await perform(
      () async {
        try {
          final devices = await _accountService.removeSession(
            sessionID: DeviceSessionID.fromString(sessionID),
            password: password,
          );

          _thisSession =
              _mapster.map1(devices.thisSession, To<DeviceSessionVM>());
          _otherSession = devices.otherSessions
              .map((e) => _mapster.map1(e, To<DeviceSessionVM>()))
              .toList();
        } catch (e) {
          _error = _devicesStringProvider.canNotTerminateSession;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _devicesCoordinator.onBackButtonPressed();
  }
}

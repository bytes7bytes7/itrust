import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/domain.dart';
import '../../coordinators/change_personal_info_coordinator.dart';
import '../../providers/change_personal_info_string_provider.dart';

part 'change_personal_info_store.g.dart';

@injectable
class ChangePersonalInfoStore = _ChangePersonalInfoStore
    with _$ChangePersonalInfoStore;

abstract class _ChangePersonalInfoStore extends SyncStore with Store {
  _ChangePersonalInfoStore({
    required AccountService accountService,
    required ChangePersonalInfoCoordinator changePersonalInfoCoordinator,
    required ChangePersonalInfoStringProvider changePersonalInfoStringProvider,
  })  : _accountService = accountService,
        _changePersonalInfoCoordinator = changePersonalInfoCoordinator,
        _changePersonalInfoStringProvider = changePersonalInfoStringProvider;

  final AccountService _accountService;
  final ChangePersonalInfoCoordinator _changePersonalInfoCoordinator;
  final ChangePersonalInfoStringProvider _changePersonalInfoStringProvider;

  String _initFirstName = '';

  String _initLastName = '';

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @computed
  bool get canApply =>
      !_isLoading &&
      firstName.isNotEmpty &&
      (firstName != _initFirstName || lastName != _initLastName);

  @action
  void init() {
    perform(
      () async {
        final me = _accountService.me;

        if (me != null) {
          firstName = _initFirstName = me.firstName;
          lastName = _initLastName = me.lastName ?? '';
        } else {
          _error = _changePersonalInfoStringProvider.canNotGetInfo;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void applyChanges() {
    perform(
      () async {
        try {
          await _accountService.changePersonalInfo(
            firstName: firstName,
            lastName: lastName,
          );

          _initFirstName = firstName;
          _initLastName = lastName;
        } catch (e) {
          // TODO:
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _changePersonalInfoCoordinator.onBackButtonPressed();
  }
}

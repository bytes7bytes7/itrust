import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/domain.dart';
import '../../coordinators/change_personal_info_coordinator.dart';

part 'change_personal_info_store.g.dart';

@injectable
class ChangePersonalInfoStore = _ChangePersonalInfoStore
    with _$ChangePersonalInfoStore;

abstract class _ChangePersonalInfoStore extends SyncStore with Store {
  _ChangePersonalInfoStore({
    required AccountService accountService,
    required ChangePersonalInfoCoordinator changePersonalInfoCoordinator,
  })  : _accountService = accountService,
        _changePersonalInfoCoordinator = changePersonalInfoCoordinator;

  final AccountService _accountService;
  final ChangePersonalInfoCoordinator _changePersonalInfoCoordinator;

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
      firstName.isNotEmpty &&
      _initFirstName != firstName &&
      _initLastName != lastName;

  @action
  void init() {
    perform(
      () async {
        final me = _accountService.me;

        if (me != null) {
          firstName = _initFirstName = me.firstName;
          lastName = _initLastName = me.lastName ?? '';
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void applyChanges() {}

  void onBackButtonPressed() {
    _changePersonalInfoCoordinator.onBackButtonPressed();
  }
}

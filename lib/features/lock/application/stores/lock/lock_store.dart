import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/services/lock_service.dart';

part 'lock_store.g.dart';

@injectable
class LockStore = _LockStore with _$LockStore;

abstract class _LockStore extends SyncStore with Store {
  _LockStore({
    required LockService lockService,
  }) : _lockService = lockService;

  final LockService _lockService;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @observable
  User? selectedUser;

  @action
  Future<void> unlock({required String passphrase}) async {
    await perform(
      () async {
        try {
          await _lockService.unlock(passphrase: passphrase);
        } catch (e) {
          _error = 'Some error';
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }
}

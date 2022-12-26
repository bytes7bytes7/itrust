import 'dart:async';

import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/persistence/credentials_repository.dart';
import '../../../../common/domain/domain.dart';
import '../../persistence/lock_repository.dart';

part 'lock_store.g.dart';

class LockStore = _LockStore with _$LockStore;

abstract class _LockStore with Store, Errorable, Loadable {
  _LockStore({
    required LockRepository lockRepository,
    required CredentialsRepository credentialsRepository,
  })  : _lockRepository = lockRepository,
        _credentialsRepository = credentialsRepository;

  final LockRepository _lockRepository;
  final CredentialsRepository _credentialsRepository;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @observable
  User? selectedUser;

  @action
  Future<void> unlock({required String passphrase}) async {
    await _wrap(() async {
      try {
        await _lockRepository.unlock(passphrase: passphrase);

        _credentialsRepository.dbPassphrase = passphrase;
      } catch (e) {
        _error = e;
      }
    });
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = null;

    await callback();

    _isLoading = false;
  }
}

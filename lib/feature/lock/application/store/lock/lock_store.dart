import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/domain/domain.dart';
import '../../../domain/service/lock_service.dart';

part 'lock_store.g.dart';

class LockStore = _LockStore with _$LockStore;

abstract class _LockStore with Store, Errorable, Loadable {
  _LockStore({
    required LockService lockService,
  }) : _lockService = lockService;

  final LockService _lockService;

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
        await _lockService.unlock(passphrase: passphrase);
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

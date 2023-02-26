import 'dart:async';
import 'dart:collection';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/domain.dart';

@test
@Singleton(as: EndUserRepository)
class TestEndUserRepository implements EndUserRepository {
  final _storage = HashMap<UserID, EndUser>();
  final _meController = BehaviorSubject<EndUser?>();

  @override
  EndUser? get me => _meController.valueOrNull;

  @override
  Stream<EndUser?> get onMeChanged => _meController.stream;

  @override
  @disposeMethod
  void dispose() {
    _meController.close();
  }

  @override
  Future<void> setMe(EndUser user) async {
    _meController.add(user);
    _storage[user.id] = user;
  }

  @override
  Future<void> removeMe() async {
    _meController.add(null);

    final me = _meController.valueOrNull;

    if (me != null) {
      _storage.remove(me.id);
    }
  }

  @override
  Future<void> addOrUpdate(EndUser user) async {
    _storage[user.id] = user;
  }
}

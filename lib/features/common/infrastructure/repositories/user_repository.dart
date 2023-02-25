import 'dart:async';
import 'dart:collection';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/domain.dart';

@test
@Singleton(as: EndUserRepository)
class TestEndUserRepository implements EndUserRepository {
  EndUser? _me;
  final _storage = HashMap<UserID, EndUser>();
  final _meController = BehaviorSubject<EndUser?>();

  @override
  EndUser? get me => _me;

  @override
  Stream<EndUser?> get onMeChanged => _meController.stream;

  @override
  @disposeMethod
  void dispose() {
    _meController.close();
  }

  @override
  Future<void> add(EndUser user) async {
    _storage[user.id] = user;
  }
}

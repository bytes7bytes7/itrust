import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/domain.dart';

@test
@Singleton(as: UserRepository)
class TestUserRepository implements UserRepository {
  EndUser? _me;
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
}

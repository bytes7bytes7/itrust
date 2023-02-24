import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@test
@Singleton(as: UserRepository)
class TestUserRepository implements UserRepository {
  EndUser? _me;
  final _meController = StreamController<EndUser?>();

  @override
  EndUser? get me => _me;

  @override
  Stream<EndUser?> get onMeChanged => _meController.stream;

  @disposeMethod
  void dispose() {
    _meController.close();
  }
}

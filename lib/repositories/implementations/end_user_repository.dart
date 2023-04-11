import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/end_user_repository.dart';

// @test
// @Singleton(as: EndUserRepository)
class TestEndUserRepository implements EndUserRepository {
  final _storage = HashMap<UserID, EndUser>();
  final _meController = BehaviorSubject<EndUser?>();

  @override
  EndUser? get me => _meController.valueOrNull;

  @override
  Stream<EndUser?> get onMeChanged => _meController.stream;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {}

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _meController.close();
  }

  @override
  Future<void> setMe(EndUser user) async {
    _meController.add(user);
    _storage[user.id] = user;
  }

  @override
  Future<void> removeMe() async {
    final me = _meController.valueOrNull;

    if (me != null) {
      _storage.remove(me.id);
    }

    _meController.add(null);
  }

  @override
  Future<void> addOrUpdate(EndUser user) async {
    _storage[user.id] = user;
  }
}

// @prod
@Singleton(as: EndUserRepository)
class ProdEndUserRepository implements EndUserRepository {
  final _meController = BehaviorSubject<EndUser?>();
  final _jsonCodec = const JsonCodec();
  final _myIDKey = 'myID';

  late Box<String> _usersBox;
  late Box<String> _myIDBox;

  @override
  EndUser? get me => _meController.valueOrNull;

  @override
  Stream<EndUser?> get onMeChanged => _meController.stream;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _usersBox = await Hive.openBox('end_user');
    _myIDBox = await Hive.openBox('my_id');

    final myID = _myIDBox.get(_myIDKey);

    if (myID != null) {
      final me = _usersBox.get(myID);

      if (me != null) {
        _meController.add(EndUser.fromJson(_jsonCodec.decode(me)));
      } else {
        await _usersBox.delete(_myIDKey);
      }
    }
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _meController.close();
    await _usersBox.close();
    await _myIDBox.close();
  }

  @override
  Future<void> setMe(EndUser user) async {
    _meController.add(user);
    await _usersBox.put(user.id.str, _jsonCodec.encode(user.toJson()));
    await _myIDBox.put(_myIDKey, user.id.str);
  }

  @override
  Future<void> removeMe() async {
    final me = _meController.valueOrNull;

    if (me != null) {
      await _usersBox.delete(me.id.str);
      await _myIDBox.delete(_myIDKey);
    }

    _meController.add(null);
  }

  @override
  Future<void> addOrUpdate(EndUser user) async {
    await _usersBox.put(user.id.str, _jsonCodec.encode(user.toJson()));
  }
}

import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../auth.dart';

const _alpha = 'qwertyuiopasdfghjklzxcvbnm ';

@test
@Singleton(as: RulesService)
class TestRulesService implements RulesService {
  final _rand = Random();

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }

  @override
  Future<String> loadRules() {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(5)),
      () {
        return _randString(_rand.nextInt(100) + 2000);
      },
    );
  }
}

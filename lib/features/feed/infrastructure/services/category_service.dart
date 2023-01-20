import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/services/category_service.dart';

@test
@Singleton(as: CategoryService)
class TestCategoryService implements CategoryService {
  final _rand = Random();

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm ';

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }

  @override
  Future<List<String>> loadCategories() {
    return Future.delayed(Duration(seconds: _rand.nextInt(3) + 1), () {
      if (_rand.nextInt(3) == 0) {
        throw Exception();
      }

      return List.generate(
        _rand.nextInt(5) + 3,
        (index) => _randString(_rand.nextInt(10) + 3),
      );
    });
  }
}

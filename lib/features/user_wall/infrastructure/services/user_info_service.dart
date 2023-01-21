import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/services/user_info_service.dart';

@Singleton(as: UserInfoService)
class TestUserService implements UserInfoService {
  @override
  Future<User> loadUser({required UserID userID}) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        if (_rand.nextBool()) {
          return EndUser(
            id: userID,
            avatarUrls: _rand.nextBool()
                ? [
                    'https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000'
                  ]
                : [],
            email: _randString(_rand.nextInt(8) + 10),
            name: _rand.nextBool() ? _randString(_rand.nextInt(8) + 10) : null,
          );
        }

        return StaffUser(
          id: userID,
          name: _randString(_rand.nextInt(8) + 5),
          avatarUrls: _rand.nextBool()
              ? [
                  'https://d2cbg94ubxgsnp.cloudfront.net/Pictures/2000xAny/9/9/2/512992_shutterstock_715962319converted_749269.png',
                ]
              : [],
        );
      },
    );
  }

  final _rand = Random();

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm ';

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }
}

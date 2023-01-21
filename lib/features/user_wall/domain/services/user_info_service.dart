import '../../../common/common.dart';

abstract class UserInfoService {
  Future<User> loadUser({required UserID userID});
}

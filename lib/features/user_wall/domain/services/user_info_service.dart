import 'package:injectable/injectable.dart';

import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../../../common/domain/value_objects/value_objects.dart';
import '../providers/user_info_provider.dart';
import '../value_objects/user_info/user_info.dart';

@singleton
class UserInfoService {
  const UserInfoService({
    required KeepFreshTokenService keepFreshTokenService,
    required UserInfoProvider userInfoProvider,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _userInfoProvider = userInfoProvider;

  final KeepFreshTokenService _keepFreshTokenService;
  final UserInfoProvider _userInfoProvider;

  Future<UserInfo> loadInfo(UserID id) async {
    try {
      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.getInfo(
          aboutUserID: id.str,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }
}

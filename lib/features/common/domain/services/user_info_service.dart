import 'package:injectable/injectable.dart';

import '../dto/dto.dart';
import '../providers/user_info_provider.dart';
import '../value_objects/value_objects.dart';
import 'keep_fresh_token_service.dart';

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
          userID: id.str,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> sendFriendBid(UserID id) async {
    try {
      final request = UserActionRequest(
        userID: id.str,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.sendFriendBid(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> cancelFriendBid(UserID id) async {
    try {
      final request = UserActionRequest(
        userID: id.str,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.cancelFriendBid(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> removeFriend(UserID id) async {
    try {
      final request = UserActionRequest(
        userID: id.str,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.removeFriend(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> removeSubscriber(UserID id) async {
    try {
      final request = UserActionRequest(
        userID: id.str,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.removeSubscriber(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> acceptFriendBid(UserID id) async {
    try {
      final request = RespondFriendBidRequest(
        respondToUserID: id.str,
        accept: true,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.responseFriendBid(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> declineFriendBid(UserID id) async {
    try {
      final request = RespondFriendBidRequest(
        respondToUserID: id.str,
        accept: false,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.responseFriendBid(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }

  Future<UserInfo> unsubscribe(UserID id) async {
    try {
      final request = UserActionRequest(
        userID: id.str,
      );

      final response = await _keepFreshTokenService.request(
        () => _userInfoProvider.unsubscribe(
          request: request,
        ),
      );

      return response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.userInfo;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }
}

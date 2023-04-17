import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/user_info_string_provider.dart';

@Singleton(as: UserInfoStringProvider)
class ProdUserInfoStringProvider extends L10nProvider
    implements UserInfoStringProvider {
  ProdUserInfoStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadUserInfo => l10n.load_user_info_error;

  @override
  String get canNotSendFriendBid => l10n.can_not_send_friend_bid;

  @override
  String get canNotCancelFriendBid => l10n.can_not_cancel_friend_bid;

  @override
  String get canNotRemoveFriend => l10n.can_not_remove_friend;

  @override
  String get canNotRemoveSubscriber => l10n.can_not_remove_subscriber;

  @override
  String get canNotAcceptFriendBid => l10n.can_not_accept_friend_bid;

  @override
  String get canNotDeclineFriendBid => l10n.can_not_decline_friend_bid;
}

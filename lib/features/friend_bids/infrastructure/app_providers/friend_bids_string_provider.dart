import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/friend_bids_string_provider.dart';

@Singleton(as: FriendBidsStringProvider)
class ProdFriendBidsStringProvider extends L10nProvider
    implements FriendBidsStringProvider {
  ProdFriendBidsStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadMyself => l10n.can_not_load_myself;

  @override
  String get canNotLoadFriendBidsAmount => l10n.can_not_load_friend_bids_amount;

  @override
  String get canNotLoadInboxFriendBids => l10n.can_not_load_inbox_friend_bids;

  @override
  String get canNotLoadOutboxFriendBids => l10n.can_not_load_outbox_friend_bids;

  @override
  String get canNotAcceptFriendBid => l10n.can_not_accept_friend_bid;

  @override
  String get canNotDeclineFriendBid => l10n.can_not_decline_friend_bid;

  @override
  String get canNotCancelFriendBid => l10n.can_not_cancel_friend_bid;
}

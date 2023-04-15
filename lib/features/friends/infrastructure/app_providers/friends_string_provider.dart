import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/friends_string_provider.dart';

@Singleton(as: FriendsStringProvider)
class ProdFriendsStringProvider extends L10nProvider
    implements FriendsStringProvider {
  ProdFriendsStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadFriends => l10n.can_not_load_friends;
}

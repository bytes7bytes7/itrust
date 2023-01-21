import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/user_info_string_provider.dart';

@Singleton(as: UserInfoStringProvider)
class ProdUserInfoStringProvider extends StringProvider
    implements UserInfoStringProvider {
  ProdUserInfoStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadUserInfo => l10n.load_user_info_error;
}

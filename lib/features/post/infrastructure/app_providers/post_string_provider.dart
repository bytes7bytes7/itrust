import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/post_string_provider.dart';

@Singleton(as: PostStringProvider)
class ProdPostStringProvider extends L10nProvider
    implements PostStringProvider {
  ProdPostStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadPost => l10n.load_post_error;
}

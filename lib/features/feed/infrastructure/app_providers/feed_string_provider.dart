import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/feed_string_repository.dart';

@Singleton(as: FeedStringProvider)
class ProdFeedStringProvider extends L10nProvider
    implements FeedStringProvider {
  const ProdFeedStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadPosts => l10n.load_posts_error;
}

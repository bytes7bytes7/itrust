import 'package:injectable/injectable.dart';

import '../../../common/application/providers/l10n_provider.dart';
import '../../application/providers/user_posts_string_provider.dart';

@Singleton(as: UserPostsStringProvider)
class ProdUserPostsStringProvider extends L10nProvider
    implements UserPostsStringProvider {
  ProdUserPostsStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadUser => l10n.can_not_load_user;

  @override
  String get canNotLoadPosts => l10n.load_posts_error;

  @override
  String get canNotLikePost => l10n.can_not_like_post;

  @override
  String get canNotUnlikePost => l10n.can_not_unlike_post;
}

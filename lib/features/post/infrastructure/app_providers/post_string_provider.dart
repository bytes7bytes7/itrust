import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/post_string_provider.dart';

@Singleton(as: PostStringProvider)
class ProdPostStringProvider extends L10nProvider
    implements PostStringProvider {
  ProdPostStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadPost => l10n.load_post_error;

  @override
  String get canNotLikePost => l10n.can_not_like_post;

  @override
  String get canNotUnlikePost => l10n.can_not_unlike_post;

  @override
  String get canNotReplyToPost => l10n.can_not_reply_to_post;
}

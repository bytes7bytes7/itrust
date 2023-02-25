import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/post_comment_string_provider.dart';

@Singleton(as: PostCommentStringProvider)
class ProdPostCommentStringProvider extends L10nProvider
    implements PostCommentStringProvider {
  ProdPostCommentStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadComments => l10n.load_comments_error;
}

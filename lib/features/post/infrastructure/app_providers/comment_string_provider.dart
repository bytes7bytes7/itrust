import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/comment_string_provider.dart';

@Singleton(as: CommentStringProvider)
class ProdCommentStringProvider extends L10nProvider
    implements CommentStringProvider {
  ProdCommentStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadComment => l10n.load_comment_error;
}

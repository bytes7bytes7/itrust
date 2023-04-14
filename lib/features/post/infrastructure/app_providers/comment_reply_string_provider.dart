import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/comment_reply_string_provider.dart';

@Singleton(as: CommentReplyStringProvider)
class ProdCommentReplyStringProvider extends L10nProvider
    implements CommentReplyStringProvider {
  ProdCommentReplyStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadCommentReplies => l10n.load_comment_replies_error;

  @override
  String get canNotLikeReply => l10n.can_not_like_comment;

  @override
  String get canNotUnlikeReply => l10n.can_not_unlike_comment;
}

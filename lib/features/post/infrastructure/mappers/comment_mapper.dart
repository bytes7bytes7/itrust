import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../application/view_models/comment/comment_vm.dart';
import '../../domain/domain.dart';

@Singleton(as: TwoEntitiesToViewModelMapper<Comment, User, CommentVM>)
class CommentMapper
    implements TwoEntitiesToViewModelMapper<Comment, User, CommentVM> {
  CommentMapper({
    required FormattedDateProvider dateFormatProvider,
  }) : _formattedDateProvider = dateFormatProvider;

  final FormattedDateProvider _formattedDateProvider;

  @override
  CommentVM map(Comment comment, User user) {
    final modifiedAt = comment.modifiedAt;

    String? formattedModifiedAt;
    if (modifiedAt != null) {
      formattedModifiedAt = _formattedDateProvider.inRelationToNow(
        modifiedAt,
      );
    }

    final formattedCreatedAt = _formattedDateProvider.inRelationToNow(
      comment.createdAt,
    );

    return CommentVM(
      id: comment.id.str,
      authorID: comment.authorID.str,
      postID: comment.postID.str,
      text: comment.text,
      createdAt: formattedCreatedAt,
      modifiedAt: formattedModifiedAt,
      authorName: user.map(
        staff: (user) => user.name,
        end: (user) => user.name ?? user.email,
      ),
      avatarUrl: user.avatarUrls.firstOrNull,
      likedByMe: comment.likedByMe,
      repliesAmount:
          comment.repliesAmount != 0 ? '${comment.repliesAmount}' : '',
      replyTo: comment.replyTo?.str,
    );
  }
}

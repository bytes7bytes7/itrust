import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/domain.dart';
import '../view_models/comment/comment_vm.dart';

@singleton
class CommentMapper
    implements TwoEntitiesToViewModelMapper<Comment, User, CommentVM> {
  CommentMapper({
    required DateFormatProvider dateFormatProvider,
  }) : _dateFormatProvider = dateFormatProvider;

  final DateFormatProvider _dateFormatProvider;

  @override
  CommentVM map(Comment comment, User user) {
    final modifiedAt = comment.modifiedAt;

    String? formattedModifiedAt;
    if (modifiedAt != null) {
      formattedModifiedAt = _dateFormatProvider.inRelationToNow(
        modifiedAt,
      );
    }

    final formattedCreatedAt = _dateFormatProvider.inRelationToNow(
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
    );
  }
}

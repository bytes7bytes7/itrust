import 'package:collection/collection.dart';
import 'package:mapster/mapster.dart';

import '../../../common/common.dart';
import '../../application/view_models/comment/comment_vm.dart';

class CommentUserToCommentVMMapper
    extends TwoSourcesMapper<Comment, User, CommentVM> {
  CommentUserToCommentVMMapper(
    super.input, {
    required FormattedDateProvider formattedDateProvider,
    required BeautifiedNumberProvider beautifiedNumberProvider,
  })  : _formattedDateProvider = formattedDateProvider,
        _beautifiedNumberProvider = beautifiedNumberProvider;

  final FormattedDateProvider _formattedDateProvider;
  final BeautifiedNumberProvider _beautifiedNumberProvider;

  @override
  CommentVM map() {
    final modifiedAt = _comment.modifiedAt;

    String? formattedModifiedAt;
    if (modifiedAt != null) {
      formattedModifiedAt = _formattedDateProvider.inRelationToNow(
        modifiedAt,
      );
    }

    final formattedCreatedAt = _formattedDateProvider.inRelationToNow(
      _comment.createdAt,
    );

    final likesAmountWithoutMyLike =
        _comment.likesAmount - (_comment.likedByMe ? 1 : 0);
    final likesAmountWithMyLike =
        _comment.likesAmount + (_comment.likedByMe ? 0 : 1);

    return CommentVM(
      id: _comment.id.str,
      authorID: _comment.authorID.str,
      postID: _comment.postID.str,
      text: _comment.text,
      createdAt: formattedCreatedAt,
      modifiedAt: formattedModifiedAt,
      authorName: _user.map(
        staff: (user) => user.name,
        end: (user) {
          return user.firstName +
              (user.lastName != null ? ' ${user.lastName!}' : '');
        },
      ),
      avatarUrl: _user.avatarUrls.firstOrNull,
      likedByMe: _comment.likedByMe,
      likesAmountWithoutMyLike: _beautifiedNumberProvider
          .beautify(likesAmountWithoutMyLike, showZero: false),
      likesAmountWithMyLike: _beautifiedNumberProvider
          .beautify(likesAmountWithMyLike, showZero: false),
      repliesAmount: _beautifiedNumberProvider.beautify(
        _comment.repliesAmount,
        showZero: false,
      ),
      replyTo: _comment.replyTo?.str,
    );
  }

  Comment get _comment => source1;

  User get _user => source2;
}

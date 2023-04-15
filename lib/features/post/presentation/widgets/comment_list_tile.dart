import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../common/common.dart';
import '../../application/view_models/view_models.dart';

const _marginV = 4.0;
const _paddingH = 20.0;
const _paddingV = 10.0;
const _underAuthorHeaderPadding = 20.0;
const _underTextPadding = 20.0;
const _compressedTextMaxLines = 2;
const _likeAndReplyPadding = 14.0;
const _commentAndRepliesAmountPadding = 6.0;
const _likeAndLikesAmountPadding = 6.0;

class CommentListTile extends StatelessWidget {
  const CommentListTile({
    super.key,
    required this.comment,
    required this.isPreview,
    required this.onLikePressed,
    this.onPressed,
    this.onCommentPressed,
    this.onAuthorPressed,
  });

  final CommentVM comment;
  final bool isPreview;
  final VoidCallback? onPressed;
  final VoidCallback onLikePressed;
  final VoidCallback? onCommentPressed;
  final VoidCallback? onAuthorPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;
    final l10n = context.l10n;

    final modifiedAt = comment.modifiedAt;

    final dateTime = modifiedAt != null
        ? l10n.comment_edited_at(modifiedAt)
        : comment.createdAt;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: _marginV,
      ),
      child: Material(
        color: colorSchemeTX.commentBackground,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: _paddingH,
              vertical: _paddingV,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthorCardHeader(
                  name: comment.authorName,
                  dateTime: dateTime,
                  avatarUrl: comment.avatarUrl,
                  onPressed: onAuthorPressed,
                ),
                const SizedBox(
                  height: _underAuthorHeaderPadding,
                ),
                Text(
                  comment.text,
                  style: theme.textTheme.bodyText1,
                  overflow: isPreview ? TextOverflow.ellipsis : null,
                  maxLines: isPreview ? _compressedTextMaxLines : null,
                ),
                const SizedBox(
                  height: _underTextPadding,
                ),
                Row(
                  children: [
                    SwitchingIconButton(
                      isSwitched: comment.likedByMe,
                      switchedIconPath: Assets.image.svg.likeFilled.path,
                      switchedColor: colorSchemeTX.warningIcon,
                      notSwitchedIconPath: Assets.image.svg.like.path,
                      notSwitchedColor: colorSchemeTX.casualIcon,
                      onPressed: onLikePressed,
                      childBuilder: (switched) {
                        return Row(
                          children: [
                            const SizedBox(
                              width: _likeAndLikesAmountPadding,
                            ),
                            Text(
                              switched
                                  ? comment.likesAmountWithMyLike
                                  : comment.likesAmountWithoutMyLike,
                              style: theme.textTheme.caption?.copyWith(
                                color:
                                    switched ? colorSchemeTX.warningIcon : null,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    if (isPreview) ...[
                      const SizedBox(
                        width: _likeAndReplyPadding,
                      ),
                      OutlinedIconButton(
                        iconPath: Assets.image.svg.flipForward.path,
                        color: colorSchemeTX.casualIcon,
                        onPressed: onCommentPressed,
                      ),
                      const SizedBox(
                        width: _commentAndRepliesAmountPadding,
                      ),
                      Text(
                        comment.repliesAmount,
                        style: theme.textTheme.caption,
                      ),
                    ],
                    const Spacer(),
                    OutlinedIconButton(
                      iconPath: Assets.image.svg.share.path,
                      color: colorSchemeTX.casualIcon,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

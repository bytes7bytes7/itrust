import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import '../../../common/common.dart';
import '../../application/view_models/view_models.dart';

const _marginV = 4.0;
const _paddingH = 20.0;
const _paddingV = 10.0;
const _underAuthorHeaderPadding = 20.0;
const _underTextPadding = 20.0;
const _compressedTextMaxLines = 2;
const _likeAndReplyPadding = 24.0;

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
    required this.comment,
    required this.isPreview,
    this.onPressed,
  });

  final CommentVM comment;
  final bool isPreview;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

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
                  dateTime: comment.modifiedAt ?? comment.createdAt,
                  avatarUrl: comment.avatarUrl,
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
                    OutlinedIconButton(
                      iconPath: Assets.image.svg.like.path,
                      color: colorSchemeTX.casualIcon,
                      onPressed: () {},
                    ),
                    if (isPreview) ...[
                      const SizedBox(
                        width: _likeAndReplyPadding,
                      ),
                      OutlinedIconButton(
                        iconPath: Assets.image.svg.flipForward.path,
                        color: colorSchemeTX.casualIcon,
                        onPressed: () {},
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

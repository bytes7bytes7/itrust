import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
import '../../application/view_models/post/post_vm.dart';
import 'author_card_header.dart';
import 'image_grid.dart';
import 'outlined_icon_button.dart';
import 'switching_icon_button.dart';

const _marginV = 4.0;
const _paddingA = 14.0;
const _underAuthorHeaderPadding = 16.0;
const _imageGridHeight = 300.0;
const _underImageGridPadding = 16.0;
const _underTextPadding = 16.0;
const _likeAndCommentPadding = 24.0;
const _compressedTextMaxLines = 5;
const _commentAndCommentAmountPadding = 6.0;

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
    required this.isPreview,
    required this.onLikePressed,
    this.onCommentPressed,
    this.onPressed,
  });

  final PostVM post;
  final VoidCallback? onPressed;
  final bool isPreview;
  final VoidCallback onLikePressed;
  final VoidCallback? onCommentPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: _marginV,
      ),
      child: Material(
        color: colorSchemeTX.postBackground,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(_paddingA),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthorCardHeader(
                  name: post.authorName,
                  dateTime: post.createdAt,
                  avatarUrl: post.avatarUrl,
                ),
                const SizedBox(
                  height: _underAuthorHeaderPadding,
                ),
                if (post.mediaUrls.isNotEmpty) ...[
                  SizedBox(
                    height: _imageGridHeight,
                    child: ImageGrid(
                      imageUrls: post.mediaUrls,
                    ),
                  ),
                  const SizedBox(
                    height: _underImageGridPadding,
                  ),
                ],
                if (post.text.isNotEmpty) ...[
                  Text(
                    post.text,
                    style: theme.textTheme.bodyText1,
                    overflow: isPreview ? TextOverflow.ellipsis : null,
                    maxLines: isPreview ? _compressedTextMaxLines : null,
                  ),
                  const SizedBox(
                    height: _underTextPadding,
                  ),
                ],
                Row(
                  children: [
                    SwitchingIconButton(
                      isSwitched: post.likedByMe,
                      switchedIconPath: Assets.image.svg.likeFilled.path,
                      switchedColor: colorSchemeTX.warningIcon,
                      notSwitchedIconPath: Assets.image.svg.like.path,
                      notSwitchedColor: colorSchemeTX.casualIcon,
                      onPressed: onLikePressed,
                    ),
                    if (isPreview) ...[
                      const SizedBox(
                        width: _likeAndCommentPadding,
                      ),
                      OutlinedIconButton(
                        iconPath: Assets.image.svg.chats.path,
                        color: colorSchemeTX.casualIcon,
                        onPressed: onCommentPressed,
                      ),
                      const SizedBox(
                        width: _commentAndCommentAmountPadding,
                      ),
                      Text(
                        post.commentsAmount,
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

import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/themes.dart';
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

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.name,
    required this.dateTime,
    required this.mediaUrls,
    required this.text,
    required this.isPreview,
    required this.isLickedByMe,
    required this.onIsLickedChanged,
    this.onPressed,
    this.avatarUrl,
  });

  final String name;
  final String dateTime;
  final String? avatarUrl;
  final List<String> mediaUrls;
  final String text;
  final VoidCallback? onPressed;
  final bool isPreview;
  final bool isLickedByMe;
  final VoidCallback onIsLickedChanged;

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
                  name: name,
                  dateTime: dateTime,
                  avatarUrl: avatarUrl,
                ),
                const SizedBox(
                  height: _underAuthorHeaderPadding,
                ),
                if (mediaUrls.isNotEmpty) ...[
                  SizedBox(
                    height: _imageGridHeight,
                    child: ImageGrid(
                      imageUrls: mediaUrls,
                    ),
                  ),
                  const SizedBox(
                    height: _underImageGridPadding,
                  ),
                ],
                if (text.isNotEmpty) ...[
                  Text(
                    text,
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
                      isSwitched: isLickedByMe,
                      switchedIconPath: Assets.image.svg.likeFilled.path,
                      switchedColor: colorSchemeTX.warningIcon,
                      notSwitchedIconPath: Assets.image.svg.like.path,
                      notSwitchedColor: colorSchemeTX.casualIcon,
                      onPressed: onIsLickedChanged,
                    ),
                    if (isPreview) ...[
                      const SizedBox(
                        width: _likeAndCommentPadding,
                      ),
                      OutlinedIconButton(
                        iconPath: Assets.image.svg.chats.path,
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

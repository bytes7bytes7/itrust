import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../theme/theme.dart';
import 'author_card_header.dart';
import 'image_grid.dart';

const _marginV = 4.0;
const _paddingA = 14.0;
const _underAuthorHeaderPadding = 16.0;
const _imageGridHeight = 300.0;
const _underImageGridPadding = 16.0;
const _underTextPadding = 16.0;
const _likeAndCommentPadding = 24.0;

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.name,
    required this.dateTime,
    required this.mediaUrls,
    required this.text,
    this.avatarUrl,
  });

  final String name;
  final String dateTime;
  final String? avatarUrl;
  final List<String> mediaUrls;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: _marginV,
      ),
      padding: const EdgeInsets.all(_paddingA),
      color: colorSchemeTX.postBackground,
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
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
            const SizedBox(
              height: _underTextPadding,
            ),
          ],
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Assets.image.svg.like.svg(
                  color: colorSchemeTX.casualIcon,
                ),
              ),
              const SizedBox(
                width: _likeAndCommentPadding,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Assets.image.svg.chats.svg(
                  color: colorSchemeTX.casualIcon,
                ),
              ),
              const Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Assets.image.svg.share.svg(
                  color: colorSchemeTX.casualIcon,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

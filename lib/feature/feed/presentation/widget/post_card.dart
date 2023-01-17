import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';
import 'author_card_header.dart';
import 'image_grid.dart';

const _marginV = 4.0;
const _paddingA = 14.0;
const _authorHeaderAndImageSeparator = 16.0;
const _imageAndTextSeparator = 16.0;

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
            height: _authorHeaderAndImageSeparator,
          ),
          if (mediaUrls.isNotEmpty) ...[
            SizedBox(
              height: 300,
              child: ImageGrid(
                imageUrls: mediaUrls,
              ),
            ),
            const SizedBox(
              height: _imageAndTextSeparator,
            ),
          ],
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../themes/themes.dart';
import '../../application/view_models/media_vm/media_vm.dart';
import 'custom_cached_network_image.dart';

const _borderRadius = 4.0;
const _itemSeparator = 2.0;
const _maxImages = 9;
const _sigmaX = 1.0;
const _sigmaY = 1.0;
const _errorOpacity = 0.2;

class ImageGrid extends StatelessWidget {
  const ImageGrid({
    super.key,
    required this.mediaList,
  });

  final List<MediaVM> mediaList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final firstRowAmount = _getItemAmountForRow(0);
    final secondRowAmount = _getItemAmountForRow(1);
    final thirdRowAmount = _getItemAmountForRow(2);
    final exceeded = mediaList.length > _maxImages;
    final exceededAmount = mediaList.length - _maxImages;

    return ClipRRect(
      borderRadius: BorderRadius.circular(_borderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (firstRowAmount > 0)
            _Row(
              theme: theme,
              amount: firstRowAmount,
              mediaList: mediaList.sublist(0, firstRowAmount),
              addSeparatorAbove: false,
            ),
          if (secondRowAmount > 0)
            _Row(
              theme: theme,
              amount: secondRowAmount,
              mediaList: mediaList.sublist(
                firstRowAmount,
                firstRowAmount + secondRowAmount,
              ),
              addSeparatorAbove: true,
            ),
          if (thirdRowAmount > 0)
            _Row(
              theme: theme,
              amount: thirdRowAmount,
              mediaList: mediaList.sublist(
                firstRowAmount + secondRowAmount,
                firstRowAmount + secondRowAmount + thirdRowAmount,
              ),
              addSeparatorAbove: true,
              lastItem: exceeded
                  ? _MoreImages(
                      text: '$exceededAmount+',
                    )
                  : null,
            ),
        ],
      ),
    );
  }

  int _getItemAmountForRow(int rowIndex) {
    switch (rowIndex) {
      case 0:
        switch (mediaList.length) {
          case 1:
          case 3:
          case 7:
            return 1;
          case 2:
          case 4:
          case 5:
          case 8:
            return 2;
          default:
            return 3;
        }
      case 1:
        switch (mediaList.length) {
          case 1:
          case 2:
            return 0;
          case 3:
          case 4:
            return 2;
          default:
            return 3;
        }
      case 2:
        if (mediaList.length >= 7) {
          return 3;
        }

        return 0;
    }

    return 0;
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.theme,
    required this.amount,
    required this.mediaList,
    required this.addSeparatorAbove,
    this.lastItem,
  });

  final ThemeData theme;
  final int amount;
  final List<MediaVM> mediaList;
  final bool addSeparatorAbove;
  final Widget? lastItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: addSeparatorAbove ? _itemSeparator : 0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            amount,
            (index) {
              final showLastItem = index == amount - 1 && lastItem != null;

              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: index != 0 ? _itemSeparator : 0,
                  ),
                  child: showLastItem
                      ? Stack(
                          children: [
                            Positioned.fill(
                              child: _Image(
                                theme: theme,
                                media: mediaList[index],
                              ),
                            ),
                            Positioned.fill(
                              child: lastItem!,
                            ),
                          ],
                        )
                      : _Image(
                          theme: theme,
                          media: mediaList[index],
                        ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.theme,
    required this.media,
  });

  final ThemeData theme;
  final MediaVM media;

  @override
  Widget build(BuildContext context) {
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return CustomCachedNetworkImage(
      imageUrl: media.url,
      fit: BoxFit.cover,
      placeholder: (context, url) {
        return Shimmer.fromColors(
          baseColor: colorSchemeTX.shimmerBase,
          highlightColor: colorSchemeTX.shimmerHighlight,
          child: ColoredBox(
            color: theme.scaffoldBackgroundColor,
          ),
        );
      },
      errorWidget: (context, url, error) {
        return ColoredBox(
          color: theme.shadowColor.withOpacity(_errorOpacity),
          child: Center(
            child: Icon(
              Icons.warning_amber,
              color: theme.scaffoldBackgroundColor,
            ),
          ),
        );
      },
    );
  }
}

class _MoreImages extends StatelessWidget {
  const _MoreImages({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: _sigmaX,
          sigmaY: _sigmaY,
        ),
        child: ColoredBox(
          color: colorSchemeTX.moreImagesBackground,
          child: Center(
            child: Text(
              text,
              style: theme.textTheme.headline3?.copyWith(
                color: colorSchemeTX.moreImagesForeground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

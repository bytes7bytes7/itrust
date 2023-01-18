import 'package:flutter/material.dart';

const _borderRadius = 4.0;
const _itemSeparator = 2.0;

class ImageGrid extends StatelessWidget {
  const ImageGrid({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    final firstRowAmount = _getItemAmountForRow(0);
    final secondRowAmount = _getItemAmountForRow(1);
    final thirdRowAmount = _getItemAmountForRow(2);

    return ClipRRect(
      borderRadius: BorderRadius.circular(_borderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (firstRowAmount > 0)
            _Row(
              amount: firstRowAmount,
              urls: imageUrls.sublist(0, firstRowAmount),
              addSeparatorAbove: false,
            ),
          if (secondRowAmount > 0)
            _Row(
              amount: secondRowAmount,
              urls: imageUrls.sublist(
                firstRowAmount,
                firstRowAmount + secondRowAmount,
              ),
              addSeparatorAbove: true,
            ),
          if (thirdRowAmount > 0)
            _Row(
              amount: thirdRowAmount,
              urls: imageUrls.sublist(
                firstRowAmount + secondRowAmount,
                firstRowAmount + secondRowAmount + thirdRowAmount,
              ),
              addSeparatorAbove: true,
            ),
        ],
      ),
    );
  }

  int _getItemAmountForRow(int rowIndex) {
    switch (rowIndex) {
      case 0:
        switch (imageUrls.length) {
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
        switch (imageUrls.length) {
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
        switch (imageUrls.length) {
          case 7:
          case 8:
          case 9:
            return 3;
          default:
            return 0;
        }
    }

    return 0;
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.amount,
    required this.urls,
    required this.addSeparatorAbove,
  });

  final int amount;
  final List<String> urls;
  final bool addSeparatorAbove;

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
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: index != 0 ? _itemSeparator : 0,
                  ),
                  child: _Image(
                    url: urls[index],
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
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        // TODO: implement
        return const ColoredBox(color: Colors.grey);
      },
    );
  }
}

import 'package:flutter/material.dart';

class SizedIcon extends StatelessWidget {
  const SizedIcon({
    super.key,
    required this.icon,
    required this.size,
  });

  final Widget icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.center,
      child: SizedBox.square(
        dimension: size,
        child: icon,
      ),
    );
  }
}

// ignore_for_file: prefer_mixin

import 'package:flutter/material.dart';

const _height = 2.0;

class LoadingBottomBar extends StatelessWidget with PreferredSizeWidget {
  const LoadingBottomBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: const LinearProgressIndicator(
        minHeight: _height,
      ),
    );
  }
}

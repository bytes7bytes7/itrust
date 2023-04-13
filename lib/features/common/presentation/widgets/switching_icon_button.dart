import 'package:flutter/material.dart';

import 'outlined_icon_button.dart';

class SwitchingIconButton extends StatelessWidget {
  const SwitchingIconButton({
    super.key,
    required this.isSwitched,
    required this.switchedIconPath,
    required this.notSwitchedIconPath,
    required this.switchedColor,
    required this.notSwitchedColor,
    this.onPressed,
    this.childBuilder,
  });

  final bool isSwitched;
  final String switchedIconPath;
  final String notSwitchedIconPath;
  final Color switchedColor;
  final Color notSwitchedColor;
  final VoidCallback? onPressed;
  final Widget Function(bool)? childBuilder;

  @override
  Widget build(BuildContext context) {
    final child = childBuilder?.call(isSwitched);

    return Row(
      children: [
        OutlinedIconButton(
          iconPath: isSwitched ? switchedIconPath : notSwitchedIconPath,
          color: isSwitched ? switchedColor : notSwitchedColor,
          onPressed: () {
            onPressed?.call();
          },
        ),
        if (child != null) child,
      ],
    );
  }
}

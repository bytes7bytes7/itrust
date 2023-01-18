import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'outlined_icon_button.dart';

class SwitchingIconButton extends HookWidget {
  const SwitchingIconButton({
    super.key,
    required this.isSwitched,
    required this.switchedIconPath,
    required this.notSwitchedIconPath,
    required this.switchedColor,
    required this.notSwitchedColor,
    this.onPressed,
  });

  final bool isSwitched;
  final String switchedIconPath;
  final String notSwitchedIconPath;
  final Color switchedColor;
  final Color notSwitchedColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final switched = useValueNotifier(isSwitched);

    return ValueListenableBuilder<bool>(
      valueListenable: switched,
      builder: (context, value, child) {
        return OutlinedIconButton(
          iconPath: value ? switchedIconPath : notSwitchedIconPath,
          color: value ? switchedColor : notSwitchedColor,
          onPressed: () {
            switched.value = !switched.value;
            onPressed?.call();
          },
        );
      },
    );
  }
}

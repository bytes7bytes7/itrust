import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../application/store/menu/menu_store.dart';

final _getIt = GetIt.instance;

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;
    final l10n = context.l10n;

    final menuStore = _getIt.get<MenuStore>();

    // TODO: separate on widget and add Observer

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.menu_tab_title,
        ),
        actions: [
          Align(
            child: ElevatedButton(
              style: buttonStyleTX.filledIcon,
              onPressed: menuStore.onMoreBtnPressed,
              child: const Icon(
                Icons.more_vert,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

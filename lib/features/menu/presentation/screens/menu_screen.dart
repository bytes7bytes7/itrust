import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/menu/menu_store.dart';

final _getIt = GetIt.instance;

class MenuScreen extends HookWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final menuStore = useMemoized(() => _getIt.get<MenuStore>());

    // TODO: separate on widget and add Observer

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.menu_tab_title,
        ),
        actions: [
          FilledIconButton(
            iconPath: Assets.image.svg.settings.path,
            onPressed: menuStore.onSettingsButtonPressed,
          ),
        ],
      ),
    );
  }
}

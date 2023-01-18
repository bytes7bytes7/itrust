import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../features/common/common.dart';
import '../../../gen/assets.gen.dart';
import '../../../themes/themes.dart';
import '../../application/application.dart';

const _iconSize = 24.0;

final _getIt = GetIt.instance;

final _tabIcons = [
  Assets.image.svg.home,
  Assets.image.svg.chats,
  Assets.image.svg.menu,
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

class _BottomNavBar extends HookWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    final homeStore = useMemoized(() => _getIt.get<HomeStore>());

    return Observer(
      builder: (context) {
        return BottomNavigationBar(
          currentIndex: homeStore.currentTabIndex,
          onTap: homeStore.onTabSelect,
          items: _tabIcons.mapIndexed(
            (index, icon) {
              final selected = homeStore.currentTabIndex == index;

              return BottomNavigationBarItem(
                icon: SizedIcon(
                  size: _iconSize,
                  icon: icon.svg(
                    color: selected
                        ? colorSchemeTX.casualIcon
                        : colorSchemeTX.unselectedCasualIcon,
                  ),
                ),
                label: '',
              );
            },
          ).toList(),
        );
      },
    );
  }
}

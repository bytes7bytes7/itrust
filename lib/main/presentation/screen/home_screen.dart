import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../application/application.dart';

final _getIt = GetIt.instance;

const _tabIcons = [
  Icons.home_outlined,
  Icons.mode_comment_outlined,
  Icons.menu,
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
    final homeStore = useMemoized(() => _getIt.get<HomeStore>());

    return Observer(
      builder: (context) {
        return BottomNavigationBar(
          currentIndex: homeStore.currentTabIndex,
          onTap: homeStore.onTabSelect,
          items: _tabIcons.map(
            (icon) {
              return BottomNavigationBarItem(
                icon: Icon(icon),
                label: '',
              );
            },
          ).toList(),
        );
      },
    );
  }
}

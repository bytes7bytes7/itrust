import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../application/store/home_store/home_store.dart';

final _getIt = GetIt.instance;

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
    final homeStore = _getIt.get<HomeStore>();

    return Observer(
      builder: (context) {
        return BottomNavigationBar(
          currentIndex: homeStore.currentTabIndex,
          onTap: homeStore.onTabSelect,
          items: homeStore.tabIcons.map(
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

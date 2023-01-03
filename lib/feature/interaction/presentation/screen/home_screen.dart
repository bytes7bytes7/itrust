import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../util/hook/autorun.dart';
import '../../../chat_list/presentation/screen/chat_list_screen.dart';
import '../../application/store/home_store/home_store.dart';

const _navIcons = [
  Icons.home_outlined,
  Icons.mode_comment_outlined,
  Icons.menu,
];
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
      bottomNavigationBar: _BottomNavBar(
        currentIndex: _calcCurrentTabIndex(),
      ),
    );
  }

  int _calcCurrentTabIndex() {
    if (body is ChatListScreen) {
      return 1;
    }

    return 0;
  }
}

class _BottomNavBar extends HookWidget {
  const _BottomNavBar({required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final homeStore = _getIt.get<HomeStore>();

    useAutorun((_) {
      homeStore.checkOrSetTab(currentIndex);
    });

    return Observer(
      builder: (context) {
        return BottomNavigationBar(
          currentIndex: homeStore.currentTabIndex,
          onTap: homeStore.onTabSelect,
          items: _navIcons.map(
            (e) {
              return BottomNavigationBarItem(
                icon: Icon(e),
                label: '$e',
              );
            },
          ).toList(),
        );
      },
    );
  }
}

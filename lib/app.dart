import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'feature/chat_list/presentation/screen/chat_list_screen.dart';
import 'theme/theme.dart';

const _navItems = [
  MapEntry(
    Icons.home_outlined,
    Scaffold(),
  ),
  MapEntry(
    Icons.mode_comment_outlined,
    ChatListScreen(),
  ),
  MapEntry(
    Icons.menu,
    Scaffold(),
  ),
];

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITrust',
      theme: lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const _Body(),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return Scaffold(
      body: _navItems[selectedIndex.value].value,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (index) => selectedIndex.value = index,
        items: _navItems.map(
          (e) {
            return BottomNavigationBarItem(
              icon: Icon(
                e.key,
              ),
              label: '${selectedIndex.value}',
            );
          },
        ).toList(),
      ),
    );
  }
}

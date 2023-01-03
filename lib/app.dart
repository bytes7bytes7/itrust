import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

import 'main_screen.dart';
import 'theme/theme.dart';
import 'util/typedef.dart';

const _appTitle = 'ITrust';
final _getIt = GetIt.instance;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      theme: lightTheme,
      navigatorKey: _getIt.get<NavigatorKey>(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MainScreen(),
    );
  }
}

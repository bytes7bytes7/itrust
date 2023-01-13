import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../application/store/settings/settings_store.dart';

final _getIt = GetIt.instance;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;
    final l10n = context.l10n;

    final settingsStore = _getIt.get<SettingsStore>();

    // TODO: separate on widgets and add Observer

    return Scaffold(
      appBar: AppBar(
        leading: Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: settingsStore.onBackButtonPressed,
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          l10n.settings_tab_title,
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: settingsStore.logOut,
          child: Text(l10n.log_out_btn),
        ),
      ),
    );
  }
}

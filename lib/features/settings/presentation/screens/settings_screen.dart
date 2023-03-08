import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/settings/settings_store.dart';

final _getIt = GetIt.instance;

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final settingsStore = useMemoized(() => _getIt.get<SettingsStore>());
    final me = settingsStore.me;

    useReaction<String>(
      (_) => settingsStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    // TODO: separate on widgets and add Observer

    return Scaffold(
      appBar: AppBar(
        leading: FilledIconButton(
          iconPath: Assets.image.svg.arrowBack.path,
          onPressed: settingsStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.settings_tab_title,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (me != null)
              UserInfoCard(
                id: me.id,
                name: me.name,
                avatarUrl: me.avatarUrl,
              ),
            OptionButton(
              iconPath: Assets.image.svg.person.path,
              title: l10n.account_btn_title,
              onPressed: () {},
            ),
            OptionButton(
              iconPath: Assets.image.svg.notificationsOff.path,
              title: l10n.mute_notifications_btn_title,
              onPressed: () {},
            ),
            OptionButton(
              iconPath: Assets.image.svg.localFireDepartment.path,
              title: l10n.burn_messages_btn_title,
              onPressed: () {},
            ),
            OptionButton(
              iconPath: Assets.image.svg.logout.path,
              title: l10n.log_out_btn_title,
              onPressed: settingsStore.logOut,
              showTrailing: false,
              isWarning: true,
            ),
          ],
        ),
      ),
    );
  }
}

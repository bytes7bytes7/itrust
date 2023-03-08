import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/settings/settings_store.dart';

const _appBarHeight = kToolbarHeight;
final _getIt = GetIt.instance;

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final settingsStore = useMemoized(() => _getIt.get<SettingsStore>());

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

    return Scaffold(
      appBar: _AppBar(
        settingsStore: settingsStore,
        l10n: l10n,
      ),
      body: _Body(
        l10n: l10n,
        settingsStore: settingsStore,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.settingsStore,
  });

  final AppLocalizations l10n;
  final SettingsStore settingsStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final me = settingsStore.me;

        return SafeArea(
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
                onPressed: settingsStore.isLoading
                    ? null
                    : settingsStore.onAccountButtonPressed,
              ),
              OptionButton(
                iconPath: Assets.image.svg.notificationsOff.path,
                title: l10n.mute_notifications_btn_title,
                onPressed: settingsStore.isLoading ? null : () {},
              ),
              OptionButton(
                iconPath: Assets.image.svg.localFireDepartment.path,
                title: l10n.burn_messages_btn_title,
                onPressed: settingsStore.isLoading ? null : () {},
              ),
              OptionButton(
                iconPath: Assets.image.svg.logout.path,
                title: l10n.log_out_btn_title,
                onPressed:
                    settingsStore.isLoading ? null : settingsStore.logOut,
                showTrailing: false,
                isWarning: true,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.settingsStore,
    required this.l10n,
  });

  final SettingsStore settingsStore;
  final AppLocalizations l10n;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: settingsStore.onBackButtonPressed,
      ),
      centerTitle: true,
      title: Text(
        l10n.settings_tab_title,
      ),
    );
  }
}

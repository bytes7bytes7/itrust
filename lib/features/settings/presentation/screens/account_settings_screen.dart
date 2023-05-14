import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/account_settings/account_settings_store.dart';

const _appBarHeight = kToolbarHeight;
final _getIt = GetIt.instance;

class AccountSettingsScreen extends HookWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final accountSettingsStore =
        useMemoized(() => _getIt.get<AccountSettingsStore>());

    return Scaffold(
      appBar: _AppBar(
        l10n: l10n,
        accountSettingsStore: accountSettingsStore,
      ),
      body: _Body(
        accountSettingsStore: accountSettingsStore,
        l10n: l10n,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.accountSettingsStore,
    required this.l10n,
  });

  final AccountSettingsStore accountSettingsStore;
  final AppLocalizations l10n;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: accountSettingsStore.onBackButtonPressed,
      ),
      centerTitle: true,
      title: Text(
        l10n.account_settings_screen_title,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.accountSettingsStore,
    required this.l10n,
  });

  final AccountSettingsStore accountSettingsStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        OptionButton(
          iconPath: Assets.image.svg.person.path,
          title: l10n.change_personal_info_btn,
          onPressed: accountSettingsStore.onPersonalInfoPressed,
        ),
        OptionButton(
          iconPath: Assets.image.svg.lock.path,
          title: l10n.change_password_btn,
          onPressed: () {},
        ),
        OptionButton(
          iconPath: Assets.image.svg.devices.path,
          title: l10n.change_devices_btn,
          onPressed: accountSettingsStore.onDevicesPressed,
        ),
      ],
    );
  }
}

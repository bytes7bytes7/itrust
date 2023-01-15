import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../l10n/l10n.dart';
import '../../../common/domain/domain.dart';
import '../../../common/presentation/widget/widget.dart';
import '../../application/store/settings/settings_store.dart';

final _getIt = GetIt.instance;

// TODO: remove
final _rand = Random();

const _alpha = 'qwertyuiopasdfghjklzxcvbnm ';

String _randString(int length) {
  final buffer = StringBuffer();

  for (var i = 0; i < length; i++) {
    buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
  }

  return buffer.toString();
}

final _user = EndUser(
  id: UserID(_randString(8)),
  avatarUrls: _rand.nextBool()
      ? [
          'https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000'
        ]
      : [],
  online: _rand.nextBool(),
  email: _rand.nextBool() ? _randString(_rand.nextInt(8) + 10) : null,
  name: _rand.nextBool() ? _randString(_rand.nextInt(8) + 10) : null,
);

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final settingsStore = _getIt.get<SettingsStore>();

    // TODO: separate on widgets and add Observer

    return Scaffold(
      appBar: AppBar(
        leading: FilledIconButton(
          iconData: Icons.arrow_back,
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
            UserInfo(
              id: _user.id.str,
              nameOrEmail: _user.name ?? _user.email,
              avatarUrl: _user.avatarUrls.firstOrNull,
            ),
            OptionButton(
              iconData: Icons.person,
              title: l10n.account_btn_title,
              onPressed: () {},
            ),
            OptionButton(
              iconData: Icons.notifications_off,
              title: l10n.mute_notifications_btn_title,
              onPressed: () {},
            ),
            OptionButton(
              iconData: Icons.local_fire_department,
              title: l10n.burn_messages_btn_title,
              onPressed: () {},
            ),
            OptionButton(
              iconData: Icons.logout,
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

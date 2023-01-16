import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/common.dart';
import '../../application/application.dart';

const _logoWidthFactor = 0.4;

final _getIt = GetIt.instance;

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final rulesStore = _getIt.get<RulesStore>();

    return Scaffold(
      appBar: AppBar(
        leading: FilledIconButton(
          iconData: Icons.arrow_back,
          onPressed: rulesStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.rules_screen_title,
        ),
      ),
      body: _Body(
        l10n: l10n,
        rulesStore: rulesStore,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.rulesStore,
  });

  final AppLocalizations l10n;
  final RulesStore rulesStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        final rules = rulesStore.rules;

        if (rules == null) {
          rulesStore.getRules();

          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView(
          children: [
            FractionallySizedBox(
              widthFactor: _logoWidthFactor,
              child: Assets.image.png.logo.image(),
            ),
            Text(
              l10n.app_name,
              style: theme.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            Text(
              rules,
              style: theme.textTheme.bodyText1,
            ),
          ],
        );
      },
    );
  }
}

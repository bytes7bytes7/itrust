import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/common.dart';
import '../../application/application.dart';

const _logoWidthFactor = 0.4;
const _paddingH = 20.0;
const _paddingV = 20.0;
const _aboveLogoPadding = 10.0;
const _underTitlePadding = 30.0;
const _loadRulesKey = 'load rules';

final _getIt = GetIt.instance;

class RulesScreen extends HookWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final rulesStore = useMemoized(() => _getIt.get<RulesStore>());

    useEffect(
      () {
        rulesStore.getRules();
        return;
      },
      const [_loadRulesKey],
    );

    useReaction<String>(
      (_) => rulesStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        leading: FilledIconButton(
          iconPath: Assets.image.svg.arrowBack.path,
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

class _Body extends HookWidget {
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

        if (rulesStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (rules == null) {
          return Center(
            child: Text(
              l10n.unable_to_load_data,
              style: theme.textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          );
        }

        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _paddingH,
              vertical: _paddingV,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(
                    height: _aboveLogoPadding,
                  ),
                  FractionallySizedBox(
                    widthFactor: _logoWidthFactor,
                    child: Assets.image.png.logo.image(),
                  ),
                  Text(
                    l10n.app_name,
                    style: theme.textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: _underTitlePadding,
                  ),
                  Text(
                    rules,
                    style: theme.textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

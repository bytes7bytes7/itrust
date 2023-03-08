import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/stores.dart';

const _appBarHeight = kToolbarHeight;
const _paddingH = 20.0;
const _aboveApplyButtonSeparator = 10.0;
const _initValuesKey = 'init personal info values';
final _getIt = GetIt.instance;

class ChangePersonalInfoScreen extends HookWidget {
  const ChangePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final changePersonalInfoStore =
        useMemoized(() => _getIt.get<ChangePersonalInfoStore>());

    useEffect(
      () {
        changePersonalInfoStore.init();

        return null;
      },
      const [_initValuesKey],
    );

    return Scaffold(
      appBar: _AppBar(
        changePersonalInfoStore: changePersonalInfoStore,
        l10n: l10n,
      ),
      body: _Body(
        changePersonalInfoStore: changePersonalInfoStore,
        l10n: l10n,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.changePersonalInfoStore,
    required this.l10n,
  });

  final ChangePersonalInfoStore changePersonalInfoStore;
  final AppLocalizations l10n;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: changePersonalInfoStore.onBackButtonPressed,
      ),
      centerTitle: true,
      title: Text(
        l10n.change_personal_info_screen_title,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.changePersonalInfoStore,
    required this.l10n,
  });

  final ChangePersonalInfoStore changePersonalInfoStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
      ),
      child: Column(
        children: [
          _FirstNameField(
            changePersonalInfoStore: changePersonalInfoStore,
            l10n: l10n,
          ),
          _LastNameField(
            changePersonalInfoStore: changePersonalInfoStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _aboveApplyButtonSeparator,
          ),
          _ApplyButton(
            changePersonalInfoStore: changePersonalInfoStore,
            l10n: l10n,
          ),
        ],
      ),
    );
  }
}

class _FirstNameField extends StatelessWidget {
  const _FirstNameField({
    required this.changePersonalInfoStore,
    required this.l10n,
  });

  final ChangePersonalInfoStore changePersonalInfoStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return TitledTextField(
          enabled: !changePersonalInfoStore.isLoading,
          title: l10n.change_first_name_field,
          initialText: changePersonalInfoStore.firstName,
          onChanged: (value) => changePersonalInfoStore.firstName = value,
        );
      },
    );
  }
}

class _LastNameField extends StatelessWidget {
  const _LastNameField({
    required this.changePersonalInfoStore,
    required this.l10n,
  });

  final ChangePersonalInfoStore changePersonalInfoStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return TitledTextField(
          enabled: !changePersonalInfoStore.isLoading,
          title: l10n.change_last_name_field,
          initialText: changePersonalInfoStore.lastName,
          onChanged: (value) => changePersonalInfoStore.lastName = value,
        );
      },
    );
  }
}

class _ApplyButton extends StatelessWidget {
  const _ApplyButton({
    required this.changePersonalInfoStore,
    required this.l10n,
  });

  final ChangePersonalInfoStore changePersonalInfoStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: changePersonalInfoStore.canApply
                  ? changePersonalInfoStore.applyChanges
                  : null,
              child: Text(l10n.apply_changes_btn),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/menu/menu_store.dart';

const _loadMeKey = 'load me';

final _getIt = GetIt.instance;

class MenuScreen extends HookWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final menuStore = useMemoized(() => _getIt.get<MenuStore>());

    useEffect(
      () {
        menuStore.loadMe();
        return null;
      },
      [_loadMeKey],
    );

    useReaction<String>(
      (_) => menuStore.error,
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
        l10n: l10n,
        menuStore: menuStore,
      ),
      body: _Body(
        l10n: l10n,
        menuStore: menuStore,
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.menuStore,
  });

  final AppLocalizations l10n;
  final MenuStore menuStore;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        l10n.menu_tab_title,
      ),
      actions: [
        FilledIconButton(
          iconPath: Assets.image.svg.settings.path,
          onPressed: menuStore.onSettingsButtonPressed,
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.menuStore,
  });

  final AppLocalizations l10n;
  final MenuStore menuStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (menuStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final myID = menuStore.myID;

        if (myID == null) {
          return const LoadingErrorContainer(
            onRetry: null,
          );
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              OptionButton(
                iconPath: Assets.image.svg.person.path,
                title: l10n.my_profile_btn,
                onPressed: menuStore.onMyProfileButtonPressed,
              ),
              OptionButton(
                iconPath: Assets.image.svg.group.path,
                title: l10n.people_btn,
                onPressed: () => menuStore.onFriendsButtonPressed(myID),
              ),
            ],
          ),
        );
      },
    );
  }
}

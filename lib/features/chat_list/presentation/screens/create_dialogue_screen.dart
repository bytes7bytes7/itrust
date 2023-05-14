import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/create_dialogue/create_dialogue_store.dart';
import '../widgets/chat_partner_list_tile.dart';

const _appBarHeight = kToolbarHeight;
const _loadDialoguePartners = 'load dialogue partners';
final _getIt = GetIt.instance;

class CreateDialogueScreen extends HookWidget {
  const CreateDialogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final createDialogueStore =
        useMemoized(() => _getIt.get<CreateDialogueStore>());

    final commonFocusNode = useFocusNode();

    useEffect(
      () {
        createDialogueStore.loadUsers();

        return null;
      },
      [_loadDialoguePartners],
    );

    useReaction<String>(
      (_) => createDialogueStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(commonFocusNode);
      },
      child: Scaffold(
        appBar: _AppBar(
          l10n: l10n,
          createDialogueStore: createDialogueStore,
        ),
        body: SafeArea(
          child: _Body(
            l10n: l10n,
            theme: theme,
            createDialogueStore: createDialogueStore,
          ),
        ),
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.createDialogueStore,
  });

  final AppLocalizations l10n;
  final CreateDialogueStore createDialogueStore;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: FilledIconButton(
          iconPath: Assets.image.svg.arrowBack.path,
          onPressed: createDialogueStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.new_dialogue_chat_screen_title,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.theme,
    required this.createDialogueStore,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final CreateDialogueStore createDialogueStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (createDialogueStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (createDialogueStore.hasError && createDialogueStore.users.isEmpty) {
          return LoadingErrorContainer(
            onRetry: createDialogueStore.refresh,
          );
        }

        if (createDialogueStore.users.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async => createDialogueStore.refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Assets.lottie.nothing.lottie(),
                      Text(
                        l10n.no_other_users,
                        style: theme.textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        final itemCount = createDialogueStore.users.length + 1;

        return RefreshIndicator(
          onRefresh: () async => createDialogueStore.refresh(),
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                if (createDialogueStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (createDialogueStore.canLoadMore) {
                  createDialogueStore.loadMoreUsers();
                }

                return const SizedBox.shrink();
              }

              final user = createDialogueStore.users[index];

              return ChatPartnerListTile(
                user: user,
                onPressed: () =>
                    createDialogueStore.onUserPressed(userID: user.id),
              );
            },
          ),
        );
      },
    );
  }
}

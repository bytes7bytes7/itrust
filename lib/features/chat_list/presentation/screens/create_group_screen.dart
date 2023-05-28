import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/create_group/create_group_store.dart';
import '../widgets/chat_partner_list_tile.dart';

const _appBarHeight = kToolbarHeight;
const _loadDialoguePartners = 'load group partners';
final _getIt = GetIt.instance;

class CreateGroupScreen extends HookWidget {
  const CreateGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final createGroupStore = useMemoized(() => _getIt.get<CreateGroupStore>());

    final commonFocusNode = useFocusNode();

    useEffect(
      () {
        createGroupStore
          ..reset()
          ..loadUsers();

        return null;
      },
      [_loadDialoguePartners],
    );

    useReaction<String>(
      (_) => createGroupStore.error,
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
          createGroupStore: createGroupStore,
        ),
        body: SafeArea(
          child: _Body(
            l10n: l10n,
            theme: theme,
            createGroupStore: createGroupStore,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createGroupStore.onFABButtonPressed,
          child: Assets.image.svg.keyboardArrowRight.svg(),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.createGroupStore,
  });

  final AppLocalizations l10n;
  final CreateGroupStore createGroupStore;

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
          onPressed: createGroupStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.new_group_chat_screen_title,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.theme,
    required this.createGroupStore,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final CreateGroupStore createGroupStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (createGroupStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (createGroupStore.hasError && createGroupStore.userIDs.isEmpty) {
          return LoadingErrorContainer(
            onRetry: createGroupStore.refresh,
          );
        }

        if (createGroupStore.userIDs.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async => createGroupStore.refresh(),
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

        final itemCount = createGroupStore.userIDs.length + 1;
        final selectedUsersLength = createGroupStore.selectedUserIDs.length;

        return RefreshIndicator(
          onRefresh: () async => createGroupStore.refresh(),
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                if (createGroupStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (createGroupStore.canLoadMore) {
                  createGroupStore.loadMoreUsers();
                }

                return const SizedBox.shrink();
              }

              if (index >= selectedUsersLength) {
                final unselectedIndex = index - selectedUsersLength;
                final user =
                    createGroupStore.getNotSelectedUser(unselectedIndex);

                return Column(
                  children: [
                    if (selectedUsersLength > 0 && unselectedIndex == 0)
                      SectionTitle(
                        title: l10n.unselected_chat_participants,
                      ),
                    ChatPartnerListTile(
                      user: user,
                      selected: false,
                      onPressed: () =>
                          createGroupStore.onUserCheckboxTap(userID: user.id),
                      onSelectedChanged: (_) =>
                          createGroupStore.onUserCheckboxTap(userID: user.id),
                    ),
                  ],
                );
              }

              final user = createGroupStore.getSelectedUser(index);

              return Column(
                children: [
                  if (index == 0)
                    SectionTitle(
                      title: l10n.selected_chat_participants,
                    ),
                  ChatPartnerListTile(
                    user: user,
                    selected: true,
                    onPressed: () =>
                        createGroupStore.onUserCheckboxTap(userID: user.id),
                    onSelectedChanged: (_) =>
                        createGroupStore.onUserCheckboxTap(userID: user.id),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

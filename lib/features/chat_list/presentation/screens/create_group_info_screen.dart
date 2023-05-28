import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/create_group/create_group_store.dart';

const _appBarHeight = kToolbarHeight;
const _avatarSize = 56.0;
final _getIt = GetIt.instance;

class CreateGroupInfoScreen extends HookWidget {
  const CreateGroupInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final createGroupStore = useMemoized(() => _getIt.get<CreateGroupStore>());

    final commonFocusNode = useFocusNode();

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

    return Observer(
      builder: (context) {
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
            floatingActionButton: createGroupStore.canCreateChat
                ? FloatingActionButton(
                    onPressed: createGroupStore.onFABButtonPressed,
                    child: createGroupStore.isCreatingChat
                        ? const ActionPrimaryLoadingIndicator()
                        : Assets.image.svg.keyboardArrowRight.svg(),
                  )
                : null,
          ),
        );
      },
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
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Observer(
      builder: (context) {
        final photo = createGroupStore.photo;

        final itemCount = createGroupStore.selectedUserIDs.length + 3;

        return ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    SizedBox.square(
                      dimension: _avatarSize,
                      child: ElevatedButton(
                        style: buttonStyleTX.roundedFilledIcon,
                        clipBehavior: Clip.hardEdge,
                        onPressed: () {},
                        child: (photo != null)
                            ? SizedBox.square(
                                dimension: _avatarSize,
                                child: Image.memory(
                                  photo,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Assets.image.svg.addAPhoto.svg(),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (v) {
                          createGroupStore.chatName = v;
                        },
                        decoration: InputDecoration(
                          labelText: l10n.name_of_group_chat_hint,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }

            if (index == 1) {
              return SectionTitle(
                title: l10n.chat_participants_amount(
                  createGroupStore.participantsAmount,
                ),
              );
            }

            if (index == 2) {
              final me = createGroupStore.getMe();

              return ChatParticipantListTile(
                user: me,
                isAdmin: true,
              );
            }

            final user = createGroupStore.getSelectedUser(index - 3);

            return ChatParticipantListTile(
              user: user,
            );
          },
        );
      },
    );
  }
}

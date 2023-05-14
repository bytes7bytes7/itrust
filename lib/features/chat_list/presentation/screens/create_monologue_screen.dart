import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/create_monologue/create_monologue_store.dart';

const _appBarHeight = kToolbarHeight;
const _avatarSize = 56.0;
final _getIt = GetIt.instance;

class CreateMonologueScreen extends HookWidget {
  const CreateMonologueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final createMonologueStore =
        useMemoized(() => _getIt.get<CreateMonologueStore>());

    final commonFocusNode = useFocusNode();

    useReaction<String>(
      (_) => createMonologueStore.error,
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
              createMonologueStore: createMonologueStore,
            ),
            body: SafeArea(
              child: _Body(
                createMonologueStore: createMonologueStore,
              ),
            ),
            floatingActionButton: createMonologueStore.canGoNext
                ? FloatingActionButton(
                    onPressed: createMonologueStore.createChat,
                    child: Assets.image.svg.keyboardArrowRight.svg(),
                  )
                : null,
          ),
        );
      },
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.createMonologueStore,
  });

  final CreateMonologueStore createMonologueStore;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: FilledIconButton(
          iconPath: Assets.image.svg.arrowBack.path,
          onPressed: createMonologueStore.onBackButtonPressed,
        ),
        centerTitle: true,
        title: Text(
          l10n.new_monologue_chat_screen_title,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.createMonologueStore,
  });

  final CreateMonologueStore createMonologueStore;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    return Observer(
      builder: (context) {
        final photo = createMonologueStore.photo;

        return ListView(
          children: [
            Padding(
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
                        createMonologueStore.chatName = v;
                      },
                      decoration: InputDecoration(
                        labelText: l10n.name_of_chat_hint,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

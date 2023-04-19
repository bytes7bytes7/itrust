import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../themes/themes.dart';
import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/presentation/widgets/action_secondary_loading_indicator.dart';
import '../../../common/presentation/widgets/sized_icon.dart';
import '../../../common/presentation/widgets/small_secondary_button.dart';
import '../../../common/presentation/widgets/user_circle_avatar.dart';

const _iconSize = 24.0;
const _paddingH = 20.0;

class InboxFriendBidListTile extends HookWidget {
  const InboxFriendBidListTile({
    super.key,
    required this.user,
    required this.isLoading,
    required this.onAvatarPressed,
    required this.onAcceptPressed,
    required this.onDeclinePressed,
  });

  final UserVM user;
  final bool isLoading;
  final VoidCallback onAvatarPressed;
  final VoidCallback onAcceptPressed;
  final VoidCallback onDeclinePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;
    final l10n = context.l10n;

    final isExpandedNotifier = useValueNotifier(false);

    return Theme(
      data: theme.copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ValueListenableBuilder<bool>(
        valueListenable: isExpandedNotifier,
        builder: (context, isExpanded, child) {
          return ExpansionTile(
            leading: UserCircleAvatar(
              url: user.avatarUrl,
              online: user.map(end: (v) => v.isOnline, staff: (_) => false),
            ),
            title: Text(
              user.name,
              style: theme.textTheme.headline5,
            ),
            subtitle: Text(
              user.nick ?? user.id,
              style: theme.textTheme.bodyText2,
            ),
            trailing: SizedIcon(
              size: _iconSize,
              icon: SvgPicture.asset(
                isExpanded
                    ? Assets.image.svg.keyboardArrowUp.path
                    : Assets.image.svg.keyboardArrowDown.path,
                color: colorSchemeTX.simpleIcon,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _paddingH,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SmallSecondaryButton(
                        onPressed: onAcceptPressed,
                        child: isLoading
                            ? const ActionSecondaryLoadingIndicator()
                            : Text(l10n.accept_friend_bid_btn_short),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SmallSecondaryButton(
                        onPressed: onDeclinePressed,
                        child: isLoading
                            ? const ActionSecondaryLoadingIndicator()
                            : Text(l10n.decline_friend_bid_btn_short),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            onExpansionChanged: (value) {
              isExpandedNotifier.value = value;
            },
          );
        },
      ),
    );
  }
}

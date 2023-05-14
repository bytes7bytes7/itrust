import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import 'user_circle_avatar.dart';

class ChatParticipantListTile extends StatelessWidget {
  const ChatParticipantListTile({
    super.key,
    required this.user,
    this.isAdmin = false,
    this.onPressed,
  });

  final UserVM user;
  final bool isAdmin;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return ListTile(
      onTap: onPressed,
      leading: UserCircleAvatar(
        url: user.avatarUrl,
        online: false,
      ),
      title: Text(
        user.name,
        style: theme.textTheme.headline5,
      ),
      subtitle: Text(
        user.nick ?? user.id,
        style: theme.textTheme.bodyText2,
      ),
      trailing: isAdmin
          ? Text(
              l10n.admin_chat_status,
              style: theme.textTheme.caption,
            )
          : null,
    );
  }
}

import 'package:flutter/material.dart';

import '../../application/view_models/user_vm/user_vm.dart';
import 'user_circle_avatar.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.user,
    required this.onPressed,
  });

  final UserVM user;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      onTap: onPressed,
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
    );
  }
}

import 'package:flutter/material.dart';

import '../../../common/application/view_models/user_vm/user_vm.dart';
import '../../../common/presentation/widgets/user_circle_avatar.dart';

class ChatPartnerListTile extends StatelessWidget {
  const ChatPartnerListTile({
    super.key,
    required this.user,
    required this.onPressed,
    this.selected,
    this.onSelectedChanged,
  });

  final UserVM user;
  final VoidCallback onPressed;
  final bool? selected;
  final void Function(bool)? onSelectedChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
      trailing: selected != null && onSelectedChanged != null
          ? Checkbox(
              value: selected,
              onChanged: (v) => onSelectedChanged!(v!),
            )
          : null,
    );
  }
}

import 'package:flutter/material.dart';

import '../../application/view_models/user_vm/user_vm.dart';
import 'user_circle_avatar.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.user,
  });

  final UserVM user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserCircleAvatar(
        url: user.avatarUrl,
        online: user.map(end: (v) => v.isOnline, staff: (_) => false),
      ),
      title: Text(user.name),
      subtitle: Text(user.nick ?? user.id),
    );
  }
}

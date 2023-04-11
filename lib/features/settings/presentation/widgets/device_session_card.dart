import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../application/view_models/device_session_vm/device_session_vm.dart';

class DeviceSessionCard extends StatelessWidget {
  const DeviceSessionCard({
    super.key,
    required this.session,
    required this.canBeTerminated,
    this.onTerminatePressed,
  });

  final DeviceSessionVM session;
  final bool canBeTerminated;
  final VoidCallback? onTerminatePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${session.deviceInfo.name}, ${session.deviceInfo.platform}',
                  style: theme.textTheme.headline5,
                ),
                const Spacer(),
                Text(
                  session.createdAt,
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              session.ip,
              style: theme.textTheme.bodyText1,
            ),
            if (canBeTerminated)
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: onTerminatePressed,
                  child: Text(l10n.terminate_session_btn),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

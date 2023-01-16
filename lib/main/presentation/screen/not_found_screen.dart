import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../l10n/l10n.dart';
import '../../application/application.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
final _getIt = GetIt.instance;

class NotFoundScreen extends HookWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final homeStore = useMemoized(() => _getIt.get<HomeStore>());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.navi_not_found_title,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: _paddingH,
            vertical: _paddingV,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                l10n.navi_not_found_body,
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: homeStore.reset,
                child: Text(l10n.not_found_btn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

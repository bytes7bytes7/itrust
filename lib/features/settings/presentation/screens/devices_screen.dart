import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/devices/devices_store.dart';
import '../widgets/widgets.dart';

const _appBarHeight = kToolbarHeight;
const _loadDevicesKey = 'load connected devices';
final _getIt = GetIt.instance;

class DevicesScreen extends HookWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final devicesStore = useMemoized(() => _getIt.get<DevicesStore>());

    useEffect(
      () {
        devicesStore.load();

        return null;
      },
      const [_loadDevicesKey],
    );

    useReaction<String>(
      (_) => devicesStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return Scaffold(
      appBar: _AppBar(
        devicesStore: devicesStore,
        l10n: l10n,
      ),
      body: _Body(
        devicesStore: devicesStore,
        l10n: l10n,
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.devicesStore,
    required this.l10n,
  });

  final DevicesStore devicesStore;
  final AppLocalizations l10n;

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: devicesStore.onBackButtonPressed,
      ),
      centerTitle: true,
      title: Text(
        l10n.connected_devices_screen_title,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.devicesStore,
    required this.l10n,
  });

  final DevicesStore devicesStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Observer(
      builder: (context) {
        if (devicesStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        // return Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: _paddingH,
        //   ),
        //   child: Column(
        //     children: const [],
        //   ),
        // );

        final thisSession = devicesStore.thisSession;
        final otherSessions = devicesStore.otherSession;

        if (thisSession == null) {
          return LoadingErrorContainer(
            onRetry: devicesStore.refresh,
          );
        }

        return RefreshIndicator(
          onRefresh: () async => devicesStore.refresh(),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: otherSessions.length + 1,
                  (context, index) {
                    if (index == 0) {
                      return Column(
                        children: [
                          SectionTitle(
                            title: l10n.this_device_title,
                          ),
                          DeviceSessionCard(
                            session: thisSession,
                            canBeTerminated: false,
                          ),
                        ],
                      );
                    }

                    final session = otherSessions[index - 1];
                    return Column(
                      children: [
                        SectionTitle(
                          title: l10n.other_devices_title,
                        ),
                        DeviceSessionCard(
                          session: session,
                          canBeTerminated: true,
                          onTerminatePressed: () =>
                              devicesStore.terminate(sessionID: session.id),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

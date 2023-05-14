import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/reaction.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/subscribers/subscribers_store.dart';

const _loadSubscribersKey = 'load subscribers';

final _getIt = GetIt.instance;

class SubscribersScreen extends HookWidget {
  const SubscribersScreen({
    super.key,
    required this.userID,
  });

  final String userID;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final subscribersStore =
        useMemoized(() => _getIt.get<SubscribersStore>()..init(userID));

    useEffect(
      () {
        subscribersStore.loadSubscribers();
        return null;
      },
      [_loadSubscribersKey],
    );

    useReaction<String>(
      (_) => subscribersStore.error,
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
        l10n: l10n,
        subscribersStore: subscribersStore,
      ),
      body: _Body(
        l10n: l10n,
        subscribersStore: subscribersStore,
      ),
    );
  }
}

// ignore: prefer_mixin
class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    required this.l10n,
    required this.subscribersStore,
  });

  final AppLocalizations l10n;
  final SubscribersStore subscribersStore;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        l10n.subscribers_screen_title,
      ),
      leading: FilledIconButton(
        iconPath: Assets.image.svg.arrowBack.path,
        onPressed: subscribersStore.onBackButtonPressed,
      ),
      actions: [
        FilledIconButton(
          iconPath: Assets.image.svg.search.path,
          onPressed: () {
            // TODO: implement search
          },
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.l10n,
    required this.subscribersStore,
  });

  final AppLocalizations l10n;
  final SubscribersStore subscribersStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Observer(
      builder: (context) {
        if (subscribersStore.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (subscribersStore.hasError && subscribersStore.subscribers.isEmpty) {
          return LoadingErrorContainer(
            onRetry: subscribersStore.refresh,
          );
        }

        if (subscribersStore.subscribers.isEmpty) {
          return RefreshIndicator(
            onRefresh: () async => subscribersStore.refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.lottie.nothing.lottie(),
                      Text(
                        l10n.no_subscribers,
                        style: theme.textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        final itemCount = subscribersStore.subscribers.length + 1;

        return RefreshIndicator(
          onRefresh: () async => subscribersStore.refresh(),
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == itemCount - 1) {
                if (subscribersStore.isLoadingMore) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (subscribersStore.canLoadMore) {
                  subscribersStore.loadMoreSubscribers();
                }

                return const SizedBox.shrink();
              }

              final subscriber = subscribersStore.subscribers[index];

              return UserListTile(
                user: subscriber,
                onPressed: () => subscribersStore.onUserPressed(subscriber.id),
              );
            },
          ),
        );
      },
    );
  }
}

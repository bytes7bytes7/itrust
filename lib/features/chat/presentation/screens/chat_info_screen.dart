// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:get_it/get_it.dart';
//
// import '../../../../gen/assets.gen.dart';
// import '../../../../l10n/l10n.dart';
// import '../../../../utils/hooks/reaction.dart';
// import '../../../common/presentation/widgets/widgets.dart';
// import '../../application/stores/chat_info/chat_info_store.dart';
//
// const _appBarHeight = kToolbarHeight;
// const _loadChatInfoKey = 'load chat info';
// final _getIt = GetIt.instance;
//
// class ChatInfoScreen extends HookWidget {
//   const ChatInfoScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final l10n = context.l10n;
//
//     final chatInfoStore = useMemoized(() => _getIt.get<ChatInfoStore>());
//
//     useEffect(
//       () {
//         chatInfoStore.init();
//
//         return null;
//       },
//       [_loadChatInfoKey],
//     );
//
//     useReaction<String>(
//       (_) => chatInfoStore.error,
//       (error) {
//         if (error.isNotEmpty) {
//           CustomSnackBar(
//             message: error,
//           ).build(context);
//         }
//       },
//     );
//
//     return Scaffold(
//       appBar: _AppBar(
//         l10n: l10n,
//         chatInfoStore: chatInfoStore,
//       ),
//       body: _Body(
//         l10n: l10n,
//         chatInfoStore: chatInfoStore,
//       ),
//     );
//   }
// }
//
// class _AppBar extends StatelessWidget implements PreferredSizeWidget {
//   const _AppBar({
//     required this.l10n,
//     required this.chatInfoStore,
//   });
//
//   final AppLocalizations l10n;
//   final ChatInfoStore chatInfoStore;
//
//   @override
//   Size get preferredSize => const Size.fromHeight(_appBarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       preferredSize: preferredSize,
//       child: AppBar(
//         leading: FilledIconButton(
//           iconPath: Assets.image.svg.arrowBack.path,
//           onPressed: chatInfoStore.onBackButtonPressed,
//         ),
//         centerTitle: true,
//         title: Text(
//           l10n.chat_info_screen_title,
//         ),
//       ),
//     );
//   }
// }
//
// class _Body extends StatelessWidget {
//   const _Body({
//     required this.l10n,
//     required this.chatInfoStore,
//   });
//
//   final AppLocalizations l10n;
//   final ChatInfoStore chatInfoStore;
//
//   @override
//   Widget build(BuildContext context) {
//     return Observer(
//       builder: (context) {
//         final me = chatInfoStore.me;
//
//         if (me == null) {
//           return const LoadingErrorContainer(
//             onRetry: null,
//           );
//         }
//
//         return ListView(
//           children: [
//             ChatInfoCard(
//               id: me.id,
//               nick: me.nick,
//               name: me.name,
//               avatarUrl: me.avatarUrl,
//             ),
//             OptionButton(
//               iconPath: Assets.image.svg.notificationsOff.path,
//               title: l10n.mute_notifications_btn_title,
//               onPressed: chatInfoStore.isLoading ? null : () {},
//             ),
//             OptionButton(
//               iconPath: Assets.image.svg.localFireDepartment.path,
//               title: l10n.burn_messages_btn_title,
//               onPressed: chatInfoStore.isLoading ? null : () {},
//             ),
//             OptionButton(
//               iconPath: Assets.image.svg.logout.path,
//               title: l10n.log_out_btn_title,
//               onPressed: chatInfoStore.isLoading ? null : chatInfoStore.logOut,
//               showTrailing: false,
//               isWarning: true,
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

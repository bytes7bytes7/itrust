import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'feature/chat_list/application/store/chat_list/chat_list_store.dart';
import 'feature/chat_list/domain/domain.dart';
import 'feature/chat_list/presentation/screen/screen.dart';
import 'feature/common/application/persistence/search_repository.dart';
import 'theme/theme.dart';

final _getIt = GetIt.instance;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ChatListStore>(
          create: (context) => ChatListStore(
            searchRepository: _getIt.get<SearchRepository<Chat>>(),
            isSelectedAlgorithm: (chat, query) =>
                chat.title.toLowerCase().contains(query.toLowerCase()),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'ITrust',
        theme: lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const ChatListScreen(),
      ),
    );
  }
}

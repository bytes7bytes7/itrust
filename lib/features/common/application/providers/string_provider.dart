import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../l10n/l10n.dart';
import '../../../../utils/typedef.dart';

abstract class StringProvider {
  const StringProvider({required this.navigatorKey});

  final NavigatorKey navigatorKey;

  AppLocalizations get l10n => navigatorKey.currentContext!.l10n;
}

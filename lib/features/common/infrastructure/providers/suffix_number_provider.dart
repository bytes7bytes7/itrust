import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@Singleton(as: SuffixNumberProvider)
class ProdSuffixNumberProvider extends StringProvider
    implements SuffixNumberProvider {
  const ProdSuffixNumberProvider({required super.navigatorKey});

  @override
  String get thousand => l10n.thousand_suffix;

  @override
  String get million => l10n.million_suffix;
}

import 'package:injectable/injectable.dart';

import '../../../common/application/application.dart';
import '../../application/providers/category_string_provider.dart';

@Singleton(as: CategoryStringProvider)
class ProdCategoryStringProvider extends L10nProvider
    implements CategoryStringProvider {
  ProdCategoryStringProvider({required super.navigatorKey});

  @override
  String get canNotLoadCategories => l10n.load_categories_error;
}

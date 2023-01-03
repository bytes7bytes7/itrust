import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';
import 'util/typedef.dart';

@InjectableInit(
  preferRelativeImports: true,
  asExtension: false,
)
void configInjector({required String env}) {
  final getIt = GetIt.instance..registerSingleton<NavigatorKey>(NavigatorKey());

  init(
    getIt,
    environment: env,
  );
}

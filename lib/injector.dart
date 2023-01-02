import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

@InjectableInit(
  preferRelativeImports: true,
  asExtension: false,
)
void configInjector({required String env}) {
  init(
    GetIt.instance,
    environment: env,
  );
}

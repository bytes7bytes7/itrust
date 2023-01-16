import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

@InjectableInit(
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configInjector({required String env}) {
  return init(
    GetIt.instance,
    environment: env,
  );
}

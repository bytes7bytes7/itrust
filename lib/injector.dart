import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

@InjectableInit(
  preferRelativeImports: true,
  asExtension: false,
)
void configInjector() {
  init(
    GetIt.instance,
    environment: const String.fromEnvironment('env', defaultValue: 'test'),
  );
}

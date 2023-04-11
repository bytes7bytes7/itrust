import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@singleton
@Order(-1)
class HiveModule {
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await Hive.initFlutter();
  }
}

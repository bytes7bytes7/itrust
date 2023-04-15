import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

@module
abstract class MapsterModule {
  @singleton
  Mapster get mapster => Mapster();
}

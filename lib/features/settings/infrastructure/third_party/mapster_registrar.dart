import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../mappers/mappers.dart';

@singleton
class SettingsMapsterRegistrar {
  const SettingsMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(MapperMeta.one(EndUserToEndUserVMMapper.new))
      ..register(
        MapperMeta.one(DeviceSessionToDeviceSessionVMMapper.new),
      );
  }
}

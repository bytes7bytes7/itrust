import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../../common/application/application.dart';
import '../mappers/mappers.dart';

final _getIt = GetIt.instance;

@singleton
class UserWallMapsterRegistrar {
  const UserWallMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster.register(
      MapperMeta.one(
        (input) => UserInfoToUserInfoVMMapper(
          input,
          beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
          mapster: _mapster,
        ),
      ),
    );
  }
}

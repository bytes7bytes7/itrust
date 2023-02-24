import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../mappers/post_user_to_post_vm_mapper.dart';

final _getIt = GetIt.instance;

@singleton
class CommonMapsterRegistrar {
  const CommonMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster.register(
      MapperMeta.two(
        (input) => PostUserToPostVMMapper(
          input,
          formattedDateProvider: _getIt.get<FormattedDateProvider>(),
          beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
        ),
      ),
    );
  }
}

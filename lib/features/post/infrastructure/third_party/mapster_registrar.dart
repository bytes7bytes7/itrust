import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../../common/application/application.dart';
import '../mappers/comment_user_to_comment_vm_mapper.dart';

final _getIt = GetIt.instance;

@singleton
class PostMapsterRegistrar {
  const PostMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster.register(
      MapperMeta.two(
        (input) => CommentUserToCommentVMMapper(
          input,
          formattedDateProvider: _getIt.get<FormattedDateProvider>(),
          beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
        ),
      ),
    );
  }
}

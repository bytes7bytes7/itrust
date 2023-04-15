import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';

class PostUserToPostVMMapper extends TwoSourcesMapper<Post, User, PostVM> {
  PostUserToPostVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  PostVM map() {
    final user = _user;

    if (user is EndUser) {
      return _mapster.map2(_post, user, To<PostVM>());
    }

    if (user is StaffUser) {
      return _mapster.map2(_post, user, To<PostVM>());
    }

    throw Exception('Unknown type of user');
  }

  Post get _post => source1;

  User get _user => source2;
}

import 'package:mapster/mapster.dart';

import '../../application/view_models/view_models.dart';
import '../../domain/domain.dart';

class UserToUserVMMapper extends OneSourceMapper<User, UserVM> {
  UserToUserVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  UserVM map() {
    final user = _user;

    if (user is EndUser) {
      return _mapster.map1(user, To<EndUserVM>());
    }

    if (user is StaffUser) {
      return _mapster.map1(user, To<StaffUserVM>());
    }

    throw Exception('Unknown type of User');
  }

  User get _user => source;
}

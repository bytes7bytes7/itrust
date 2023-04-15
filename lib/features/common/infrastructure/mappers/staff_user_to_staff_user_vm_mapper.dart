import 'package:collection/collection.dart';
import 'package:mapster/mapster.dart';

import '../../application/view_models/view_models.dart';
import '../../domain/entities/user/user.dart';

class StaffUserToStaffUserVMMapper
    extends OneSourceMapper<StaffUser, StaffUserVM> {
  StaffUserToStaffUserVMMapper(super.input);

  @override
  StaffUserVM map() {
    return StaffUserVM(
      id: _user.id.str,
      name: _user.name,
      avatarUrl: _user.avatarUrls.firstOrNull,
      nick: _user.nick,
    );
  }

  StaffUser get _user => source;
}

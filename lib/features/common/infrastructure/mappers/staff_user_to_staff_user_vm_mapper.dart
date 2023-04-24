import 'package:mapster/mapster.dart';

import '../../application/providers/beautified_number_provider.dart';
import '../../application/view_models/view_models.dart';
import '../../domain/entities/user/user.dart';

class StaffUserToStaffUserVMMapper
    extends OneSourceMapper<StaffUser, StaffUserVM> {
  StaffUserToStaffUserVMMapper(
    super.input, {
    required BeautifiedNumberProvider beautifiedNumberProvider,
  }) : _beautifiedNumberProvider = beautifiedNumberProvider;

  final BeautifiedNumberProvider _beautifiedNumberProvider;

  @override
  StaffUserVM map() {
    return StaffUserVM(
      id: _user.id.str,
      name: _user.name,
      avatarsAmount: _beautifiedNumberProvider.beautify(_user.avatarsAmount),
      avatarUrl: _user.avatarUrl,
      nick: _user.nick,
    );
  }

  StaffUser get _user => source;
}

import 'package:collection/collection.dart';
import 'package:mapster/mapster.dart';

import '../../../common/common.dart';
import '../../application/view_models/end_user_vm/end_user_vm.dart';

class EndUserToEndUserVMMapper extends OneSourceMapper<EndUser, EndUserVM> {
  EndUserToEndUserVMMapper(super.input);

  @override
  EndUserVM map() {
    return EndUserVM(
      id: _user.id.str,
      name: _user.firstName +
          (_user.lastName != null ? ' ${_user.lastName}' : ''),
      avatarUrl: _user.avatarUrls.firstOrNull,
    );
  }

  EndUser get _user => source;
}

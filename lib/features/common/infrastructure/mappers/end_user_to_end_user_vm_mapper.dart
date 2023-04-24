import 'package:mapster/mapster.dart';

import '../../application/providers/beautified_number_provider.dart';
import '../../application/providers/formatted_date_provider.dart';
import '../../application/view_models/view_models.dart';
import '../../domain/entities/user/user.dart';

class EndUserToEndUserVMMapper extends OneSourceMapper<EndUser, EndUserVM> {
  EndUserToEndUserVMMapper(
    super.input, {
    required FormattedDateProvider formattedDateProvider,
    required BeautifiedNumberProvider beautifiedNumberProvider,
  })  : _formattedDateProvider = formattedDateProvider,
        _beautifiedNumberProvider = beautifiedNumberProvider;

  final FormattedDateProvider _formattedDateProvider;
  final BeautifiedNumberProvider _beautifiedNumberProvider;

  @override
  EndUserVM map() {
    final lastSeenAtMSSinceEpoch = _user.lastSeenAtMSSinceEpoch;

    return EndUserVM(
      id: _user.id.str,
      name: _user.firstName +
          (_user.lastName != null ? ' ${_user.lastName}' : ''),
      avatarsAmount: _beautifiedNumberProvider.beautify(_user.avatarsAmount),
      avatarUrl: _user.avatarUrl,
      isOnline: _user.isOnline,
      lastSeenAt: lastSeenAtMSSinceEpoch != null
          ? _formattedDateProvider.inRelationToNow(
              DateTime.fromMillisecondsSinceEpoch(lastSeenAtMSSinceEpoch),
            )
          : null,
      nick: _user.nick,
    );
  }

  EndUser get _user => source;
}

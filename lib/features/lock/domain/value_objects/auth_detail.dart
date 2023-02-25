import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/typedef.dart';
import '../../../common/domain/domain.dart';

part 'auth_detail.freezed.dart';

part 'auth_detail.g.dart';

@freezed
class AuthDetail with _$AuthDetail {
  const factory AuthDetail({
    required UserID userID,
    required String name,
    String? avatarUrl,
  }) = _AuthDetail;

  factory AuthDetail.fromJson(JsonMap json) =>
      _$AuthDetailFromJson(json);
}

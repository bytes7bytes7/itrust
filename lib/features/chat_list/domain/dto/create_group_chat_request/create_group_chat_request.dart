import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/dto/new_media/new_media.dart';
import '../../../../common/domain/value_objects/user_id/user_id.dart';

part 'create_group_chat_request.g.dart';

@JsonSerializable()
class CreateGroupChatRequest {
  const CreateGroupChatRequest({
    required this.title,
    required this.guestIDs,
    this.image,
  });

  final String title;
  final List<UserID> guestIDs;
  final NewMedia? image;

  factory CreateGroupChatRequest.fromJson(JsonMap json) =>
      _$CreateGroupChatRequestFromJson(json);

  JsonMap toJson() => _$CreateGroupChatRequestToJson(this);
}

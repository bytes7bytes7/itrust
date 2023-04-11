import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../../common/domain/domain.dart';

part 'get_feed_response.g.dart';

@JsonSerializable()
class GetFeedResponse {
  const GetFeedResponse({
    required this.posts,
  });

  final List<Post> posts;

  factory GetFeedResponse.fromJson(JsonMap json) =>
      _$GetFeedResponseFromJson(json);

  JsonMap toJson() => _$GetFeedResponseToJson(this);
}

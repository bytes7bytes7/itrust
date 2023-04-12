import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_tags_response.g.dart';

@JsonSerializable()
class GetTagsResponse {
  const GetTagsResponse({
    required this.tags,
  });

  final List<String> tags;

  factory GetTagsResponse.fromJson(JsonMap json) =>
      _$GetTagsResponseFromJson(json);

  JsonMap toJson() => _$GetTagsResponseToJson(this);
}

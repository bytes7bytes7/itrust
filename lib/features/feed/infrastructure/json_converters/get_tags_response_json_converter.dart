import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/get_tags_response/get_tags_response.dart';

@Singleton(as: JsonConverter<GetTagsResponse, JsonMap>)
class GetTagsResponseJsonConverter
    extends JsonConverter<GetTagsResponse, JsonMap> {
  const GetTagsResponseJsonConverter();

  @override
  GetTagsResponse fromJson(JsonMap json) {
    return GetTagsResponse.fromJson(json);
  }

  @override
  JsonMap toJson(GetTagsResponse object) {
    return object.toJson();
  }
}

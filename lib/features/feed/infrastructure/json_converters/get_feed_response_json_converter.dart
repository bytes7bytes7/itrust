import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/get_feed_response/get_feed_response.dart';

@Singleton(as: JsonConverter<GetFeedResponse, JsonMap>)
class GetFeedResponseJsonConverter
    extends JsonConverter<GetFeedResponse, JsonMap> {
  const GetFeedResponseJsonConverter();

  @override
  GetFeedResponse fromJson(JsonMap json) {
    return GetFeedResponse.fromJson(json);
  }

  @override
  JsonMap toJson(GetFeedResponse object) {
    return object.toJson();
  }
}

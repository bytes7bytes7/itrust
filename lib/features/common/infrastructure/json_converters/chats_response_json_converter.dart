import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/chats_response/chats_response.dart';

@Singleton(as: JsonConverter<ChatsResponse, JsonMap>)
class ChatsResponseJsonConverter extends JsonConverter<ChatsResponse, JsonMap> {
  const ChatsResponseJsonConverter();

  @override
  ChatsResponse fromJson(JsonMap json) {
    return ChatsResponse.fromJson(json);
  }

  @override
  JsonMap toJson(ChatsResponse object) {
    return object.toJson();
  }
}

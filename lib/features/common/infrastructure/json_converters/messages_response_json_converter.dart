import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../domain/dto/messages_response/messages_response.dart';

@Singleton(as: JsonConverter<MessagesResponse, JsonMap>)
class MessagesResponseJsonConverter
    extends JsonConverter<MessagesResponse, JsonMap> {
  const MessagesResponseJsonConverter();

  @override
  MessagesResponse fromJson(JsonMap json) {
    return MessagesResponse.fromJson(json);
  }

  @override
  JsonMap toJson(MessagesResponse object) {
    return object.toJson();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';

import '../../../utils/typedef.dart';

@Singleton(as: JsonConverter<ProblemDetails, JsonMap>)
class ProblemDetailsJsonConverter
    extends JsonConverter<ProblemDetails, JsonMap> {
  @override
  ProblemDetails fromJson(JsonMap json) {
    return ProblemDetails.fromJson(json);
  }

  @override
  JsonMap toJson(ProblemDetails object) {
    return object.toJson();
  }
}

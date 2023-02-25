import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import 'typedef.dart';

final _getIt = GetIt.instance;

class JsonEitherWrapper<L, R> {
  const JsonEitherWrapper(this.value);

  final Either<L, R> value;

  factory JsonEitherWrapper.fromJson(JsonMap json) {
    try {
      final leftConverter = _getIt.get<JsonConverter<L, JsonMap>>();

      return JsonEitherWrapper(left(leftConverter.fromJson(json)));
    } catch (_) {
      final rightConverter = _getIt.get<JsonConverter<R, JsonMap>>();

      return JsonEitherWrapper(right(rightConverter.fromJson(json)));
    }
  }

  JsonMap toJson() {
    return value.fold(
      (l) => _getIt.get<JsonConverter<L, JsonMap>>().toJson(l),
      (r) => _getIt.get<JsonConverter<R, JsonMap>>().toJson(r),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../value_objects/media_id/media_id.dart';

part 'media.freezed.dart';

part 'media.g.dart';

@JsonEnum()
enum MediaType {
  photo,
  video,
  doc,
}

@freezed
class Media with _$Media {
  const factory Media({
    required MediaID id,
    required MediaType type,
    required String encodedBytes,
  }) = _Media;

  factory Media.fromJson(JsonMap json) => _$MediaFromJson(json);
}

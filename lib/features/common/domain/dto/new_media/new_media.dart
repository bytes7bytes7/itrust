import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'new_media.g.dart';

@JsonSerializable()
class NewMedia {
  const NewMedia({
    required this.filename,
    required this.bytes,
  });

  final String filename;
  final List<int> bytes;

  factory NewMedia.fromJson(JsonMap json) => _$NewMediaFromJson(json);

  JsonMap toJson() => _$NewMediaToJson(this);
}

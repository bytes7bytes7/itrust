import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/media/media.dart';

part 'media_vm.freezed.dart';

@Freezed(
  fromJson: false,
  toJson: false,
)
class MediaVM with _$MediaVM {
  const factory MediaVM({
    required String id,
    required MediaType type,
    required String url,
  }) = _MediaVM;
}

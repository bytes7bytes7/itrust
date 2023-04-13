import 'package:freezed_annotation/freezed_annotation.dart';

part 'end_user_vm.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class EndUserVM with _$EndUserVM {
  const factory EndUserVM({
    required String id,
    required String name,
    String? avatarUrl,
  }) = _EndUserVM;
}

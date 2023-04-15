import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_vm.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
class UserVM with _$UserVM {
  const factory UserVM.end({
    required String id,
    required String name,
    required bool isOnline,
    String? lastSeenAt,
    String? avatarUrl,
    String? nick,
  }) = EndUserVM;

  const factory UserVM.staff({
    required String id,
    required String name,
    String? avatarUrl,
    String? nick,
  }) = StaffUserVM;
}

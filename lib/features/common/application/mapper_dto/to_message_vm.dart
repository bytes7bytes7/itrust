import '../../domain/entities/user/user.dart';

class ToMessageVM {
  const ToMessageVM({
    required this.isSentByMe,
    this.user,
  });

  final bool isSentByMe;
  final User? user;
}

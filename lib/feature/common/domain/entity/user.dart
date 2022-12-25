import '../value_object/value_object.dart';

class User {
  const User({
    required this.id,
    required this.name,
    required this.avatarUrls,
  });

  final UserID id;
  final String name;
  final List<String> avatarUrls;
}

part of 'user.dart';

extension EndUserBusinessLogic on EndUser {
  EndUser _copyWith({
    String? name,
    List<String>? avatarUrls,
  }) {
    return EndUser(
      id: id,
      name: name ?? this.name,
      avatarUrls: avatarUrls ?? this.avatarUrls,
      online: online,
      lastSeen: lastSeen,
    );
  }

  EndUser setName(String name) {
    if (name.isEmpty) {
      throw Exception('name can not be empty');
    }

    return _copyWith(
      name: name,
    );
  }

  EndUser addAvatarUrl(String avatarUrl) {
    return _copyWith(
      avatarUrls: List.from(avatarUrls)..add(avatarUrl),
    );
  }

  EndUser removeAvatarUrl(String avatarUrl) {
    final index = avatarUrls.indexOf(avatarUrl);

    if (index == -1) {
      throw Exception('avatarUrl not found');
    }

    return _copyWith(
      avatarUrls: List.from(avatarUrls)..removeAt(index),
    );
  }
}

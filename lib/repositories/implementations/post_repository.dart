import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/post_repository.dart';

@dev
@Singleton(as: PostRepository)
class DevPostRepository implements PostRepository {
  final _storage = HashMap<PostID, Post>();

  @override
  Future<Post?> getByID(PostID id) async {
    return _storage[id];
  }

  @override
  Future<void> addOrUpdate({required Post post}) async {
    _storage[post.id] = post;
  }
}

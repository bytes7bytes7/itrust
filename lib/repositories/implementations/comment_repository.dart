import 'dart:collection';

import 'package:injectable/injectable.dart';

import '../../features/common/domain/domain.dart';
import '../interfaces/comment_repository.dart';

@dev
@Singleton(as: CommentRepository)
class DevCommentRepository implements CommentRepository {
  final _storage = HashMap<CommentID, Comment>();

  @override
  Future<Comment?> getByID(CommentID id) async {
    return _storage[id];
  }

  @override
  Future<void> addOrUpdate({required Comment comment}) async {
    _storage[comment.id] = comment;
  }
}

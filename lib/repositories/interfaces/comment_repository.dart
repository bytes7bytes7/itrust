import '../../features/common/domain/domain.dart';

abstract class CommentRepository {
  Future<Comment?> getByID(CommentID id);

  Future<void> addOrUpdate({required Comment comment});
}

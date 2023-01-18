import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: CommentService)
class TestCommentService implements CommentService {
  @override
  Future<List<Comment>> loadComments(PostID postID) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        return List.generate(
          _rand.nextBool() ? _rand.nextInt(30) + 1 : 0,
          (index) {
            return Comment(
              id: CommentID('comment ${_rand.nextInt(1000)}'),
              authorID: UserID('user ${_rand.nextInt(1000)}'),
              postID: PostID('post ${_rand.nextInt(1000)}'),
              text: _randString(_rand.nextInt(50) + 10),
              createdAt: _randDateTime(),
              modifiedAt: _rand.nextBool() ? _randDateTime() : null,
            );
          },
        );
      },
    );
  }

  final _rand = Random();

  final _alpha = 'qwertyuiopasdfghjklzxcvbnm ';

  String _randString(int length) {
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
    }

    return buffer.toString();
  }

  DateTime _randDateTime() {
    return DateTime(
      2023,
      1,
      _rand.nextInt(31) + 1,
      _rand.nextInt(24),
      _rand.nextInt(60),
      _rand.nextInt(60),
    );
  }
}

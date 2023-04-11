import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/services/post_service.dart';

@test
@Singleton(as: PostService)
class TestPostService implements PostService {
  @override
  Future<Post> loadPost(PostID postID) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        if (_rand.nextInt(3) == 0) {
          throw Exception();
        }

        final likedByMe = _rand.nextBool();

        return Post(
          id: postID,
          authorID: UserID('user ${_rand.nextInt(1000)}'),
          createdAt: _randDateTime(),
          media: [],
          text: _rand.nextBool() ? _randString(_rand.nextInt(5000) + 30) : '',
          likedByMe: likedByMe,
          likesAmount: _rand.nextBool()
              ? _rand.nextInt(100)
              : likedByMe
                  ? 1
                  : 0,
          commentsAmount: _rand.nextBool() ? _rand.nextInt(2000) : 0,
          tags: List.generate(
            _rand.nextInt(10),
                (index) => _randString(_rand.nextInt(8) + 3),
          ),
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

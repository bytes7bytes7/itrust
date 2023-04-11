import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/domain.dart';

@test
@Singleton(as: CommentService)
class TestCommentService implements CommentService {
  @override
  Future<List<Comment>> loadPostComments({required PostID postID}) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        if (_rand.nextInt(3) == 0) {
          throw Exception();
        }

        return List.generate(
          _rand.nextBool() ? _rand.nextInt(30) + 1 : 0,
          (index) {
            final likedByMe = _rand.nextBool();

            return Comment(
              id: CommentID('comment ${_rand.nextInt(1000)}'),
              authorID: UserID('user ${_rand.nextInt(1000)}'),
              postID: PostID.fromString('post ${_rand.nextInt(1000)}'),
              text: _randString(_rand.nextInt(50) + 10),
              createdAt: _randDateTime(),
              modifiedAt: _rand.nextBool() ? _randDateTime() : null,
              likedByMe: likedByMe,
              likesAmount: _rand.nextBool()
                  ? _rand.nextInt(2000)
                  : likedByMe
                      ? 1
                      : 0,
              repliesAmount: _rand.nextBool() ? _rand.nextInt(2000) : 0,
              replyTo: null,
            );
          },
        );
      },
    );
  }

  @override
  Future<Comment> loadComment({required CommentID commentID}) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        if (_rand.nextInt(3) == 0) {
          throw Exception();
        }

        final likedByMe = _rand.nextBool();

        return Comment(
          id: CommentID('comment ${_rand.nextInt(1000)}'),
          authorID: UserID('user ${_rand.nextInt(1000)}'),
          postID: PostID.fromString('post ${_rand.nextInt(1000)}'),
          text: _randString(_rand.nextInt(50) + 10),
          createdAt: _randDateTime(),
          modifiedAt: _rand.nextBool() ? _randDateTime() : null,
          likedByMe: likedByMe,
          likesAmount: _rand.nextBool()
              ? _rand.nextInt(2000)
              : likedByMe
              ? 1
              : 0,
          repliesAmount: _rand.nextBool() ? _rand.nextInt(2000) : 0,
          replyTo: _rand.nextBool()
              ? CommentID('comment ${_rand.nextInt(1000)}')
              : null,
        );
      },
    );
  }

  @override
  Future<List<Comment>> loadCommentReplies({required CommentID commentID}) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        if (_rand.nextInt(3) == 0) {
          throw Exception();
        }

        return List.generate(
          _rand.nextBool() ? _rand.nextInt(30) + 1 : 0,
          (index) {
            final likedByMe = _rand.nextBool();

            return Comment(
              id: CommentID('comment ${_rand.nextInt(1000)}'),
              authorID: UserID('user ${_rand.nextInt(1000)}'),
              postID: PostID.fromString('post ${_rand.nextInt(1000)}'),
              text: _randString(_rand.nextInt(50) + 10),
              createdAt: _randDateTime(),
              modifiedAt: _rand.nextBool() ? _randDateTime() : null,
              likedByMe: likedByMe,
              likesAmount: _rand.nextBool()
                  ? _rand.nextInt(2000)
                  : likedByMe
                  ? 1
                  : 0,
              repliesAmount: _rand.nextBool() ? _rand.nextInt(2000) : 0,
              replyTo: commentID,
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

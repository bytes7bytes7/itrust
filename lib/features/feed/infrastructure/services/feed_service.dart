import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/services/feed_service.dart';

@Singleton(as: FeedService)
class ProdFeedService implements FeedService {
  ProdFeedService({
    required PostRepository postRepository,
    required EndUserRepository endUserRepository,
  })  : _postRepository = postRepository,
        _endUserRepository = endUserRepository;

  final PostRepository _postRepository;
  final EndUserRepository _endUserRepository;

  @override
  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    bool nextPage = true,
  }) {
    return _postRepository.loadPosts(
      category: category,
      limit: limit,
      nextPage: nextPage,
    );
  }

  @override
  Future<void> likePost({required PostID postID}) {
    return _postRepository.likePost(
      postID: postID,
      userID: _endUserRepository.me!.id,
    );
  }
}

// @test
// @Singleton(as: FeedService)
class TestFeedService implements FeedService {
  @override
  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    bool nextPage = true,
  }) {
    return Future.delayed(Duration(seconds: _rand.nextInt(3) + 1), () {
      if (_rand.nextInt(3) == 0) {
        throw Exception();
      }

      return List.generate(
        _rand.nextInt(30) + 10,
        (index) {
          _mediaUrls.shuffle();

          final likedByMe = _rand.nextBool();

          return Post(
            id: PostID('$category ${_randString(8)}'),
            authorID: UserID(_randString(8)),
            createdAt: _randDateTime(),
            text: _rand.nextBool() ? _randString(_rand.nextInt(500) + 30) : '',
            mediaUrls:
                _mediaUrls.take(_rand.nextInt(_mediaUrls.length)).toList(),
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
    });
  }

  @override
  Future<void> likePost({required PostID postID}) {
    return Future.delayed(
      Duration(seconds: _rand.nextInt(3) + 1),
      () {
        if (_rand.nextInt(3) == 0) {
          throw Exception();
        }
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

  final _mediaUrls = [
    'https://media.vogue.co.uk/photos/5fd8cfe1fd34bd57d1413164/2:3/w_1331,h_1997,c_limit/042-Adesuwa%20Aighewi%20by%20STYLEDUMONDE%20Street%20Style%20Fashion%20Photography_95A0861FullRes.jpg',
    'https://www.iwmbuzz.com/wp-content/uploads/2022/02/boys-out-there-style-your-hair-dye-your-hair-just-like-riyaz-aly-to-impress-your-girl-2.jpg',
    'https://www.women-ideas.net/wp-content/uploads/2019/05/streetstyle03302-05-2019.jpg',
    'https://media.theeverygirl.com/wp-content/uploads/2020/05/graphic-tee-style-the-everygirl-4.jpg',
    'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8&w=1000&q=80',
    'https://mymodernmet.com/wp/wp-content/uploads/2019/12/photos-of-indonesia-rarindra-prakarsa-17.jpg',
    'https://images.csmonitor.com/csm/2021/01/301.jpg?alias=standard_600x400',
    'https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0=',
    'https://live.staticflickr.com/65535/52530446584_cb1dce6453_z.jpg',
    'https://media.wired.com/photos/5fb70f2ce7b75db783b7012c/master/pass/Gear-Photos-597589287.jpg',
    'https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863',
    'https://www.befunky.com/images/prismic/318d2218-716f-4dd6-a95d-9fa409ec447e_landing-photo-to-cartoon-img4.jpeg?auto=avif,webp&format=jpg&width=863',
  ];
}

import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../common/common.dart';
import '../../domain/service/feed_service.dart';

@test
@Singleton(as: FeedService)
class TestFeedService implements FeedService {
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
  ];

  @override
  Future<List<Post>> loadPosts(String category) {
    return Future.delayed(Duration(seconds: _rand.nextInt(3) + 1), () {
      return List.generate(
        _rand.nextInt(30) + 10,
        (index) {
          _mediaUrls.shuffle();

          return Post(
            id: PostID('$category ${_randString(8)}'),
            authorID: UserID(_randString(8)),
            createdAt: _randDateTime(),
            text: _rand.nextBool() ? _randString(_rand.nextInt(100) + 30) : '',
            seenBy: [],
            mediaUrls:
                _mediaUrls.take(_rand.nextInt(_mediaUrls.length)).toList(),
          );
        },
      );
    });
  }
}

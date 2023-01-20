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
        return Post(
          id: postID,
          authorID: UserID('user ${_rand.nextInt(1000)}'),
          createdAt: _randDateTime(),
          mediaUrls: _rand.nextBool()
              ? _mediaUrls.sublist(
                  0,
                  _rand.nextInt(_mediaUrls.length),
                )
              : [],
          text: _rand.nextBool() ? _randString(_rand.nextInt(5000) + 30) : '',
          commentsAmount: _rand.nextBool() ? _rand.nextInt(2000) : 0,
          likedByMe: _rand.nextBool(),
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

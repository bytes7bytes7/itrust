import 'package:collection/collection.dart';
import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';
import '../other/media_url_creator.dart';

class PostUserToPostVMMapper extends TwoSourcesMapper<Post, User, PostVM> {
  PostUserToPostVMMapper(
    super.input, {
    required FormattedDateProvider formattedDateProvider,
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required MediaUrlCreator mediaUrlCreator,
  })  : _formattedDateProvider = formattedDateProvider,
        _beautifiedNumberProvider = beautifiedNumberProvider,
        _mediaUrlCreator = mediaUrlCreator;

  final FormattedDateProvider _formattedDateProvider;
  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final MediaUrlCreator _mediaUrlCreator;

  @override
  PostVM map() {
    final likesAmountWithoutMyLike =
        _post.likesAmount - (_post.likedByMe ? 1 : 0);
    final likesAmountWithMyLike = _post.likesAmount + (_post.likedByMe ? 0 : 1);

    return PostVM(
      id: _post.id.str,
      authorID: _post.authorID.str,
      authorName: _user.map(
        staff: (user) => user.name,
        end: (user) {
          return user.firstName +
              (user.lastName != null ? ' ${user.lastName!}' : '');
        },
      ),
      avatarUrl: _user.avatarUrls.firstOrNull,
      text: _post.text,
      createdAt: _formattedDateProvider.inRelationToNow(_post.createdAt),
      media: _post.media
          .map(
            (e) => MediaVM(
              id: e.id.str,
              type: e.type,
              url: _mediaUrlCreator.create(e.id),
            ),
          )
          .toList(),
      likedByMe: _post.likedByMe,
      likesAmountWithoutMyLike:
          _beautifiedNumberProvider.beautify(likesAmountWithoutMyLike),
      likesAmountWithMyLike:
          _beautifiedNumberProvider.beautify(likesAmountWithMyLike),
      commentsAmount: _beautifiedNumberProvider.beautify(_post.commentsAmount),
      tags: _post.tags,
    );
  }

  Post get _post => source1;

  User get _user => source2;
}
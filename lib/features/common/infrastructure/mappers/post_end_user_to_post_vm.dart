import 'package:collection/collection.dart';
import 'package:mapster/mapster.dart';

import '../../application/providers/beautified_number_provider.dart';
import '../../application/providers/formatted_date_provider.dart';
import '../../application/view_models/media_vm/media_vm.dart';
import '../../application/view_models/post_vm/post_vm.dart';
import '../../domain/entities/post/post.dart';
import '../../domain/entities/user/user.dart';

class PostEndUserToPostVMMapper
    extends TwoSourcesMapper<Post, EndUser, PostVM> {
  PostEndUserToPostVMMapper(
    super.input, {
    required FormattedDateProvider formattedDateProvider,
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required Mapster mapster,
  })  : _formattedDateProvider = formattedDateProvider,
        _beautifiedNumberProvider = beautifiedNumberProvider,
        _mapster = mapster;

  final FormattedDateProvider _formattedDateProvider;
  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final Mapster _mapster;

  @override
  PostVM map() {
    final likesAmountWithoutMyLike =
        _post.likesAmount - (_post.likedByMe ? 1 : 0);
    final likesAmountWithMyLike = _post.likesAmount + (_post.likedByMe ? 0 : 1);

    return PostVM(
      id: _post.id.str,
      authorID: _post.authorID.str,
      authorName: _user.firstName +
          (_user.lastName != null ? ' ${_user.lastName!}' : ''),
      avatarUrl: _user.avatarUrls.firstOrNull,
      text: _post.text,
      createdAt: _formattedDateProvider.inRelationToNow(_post.createdAt),
      media: _post.media.map((e) => _mapster.map1(e, To<MediaVM>())).toList(),
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

  EndUser get _user => source2;
}

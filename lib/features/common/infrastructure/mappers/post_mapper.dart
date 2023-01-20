import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';

@Singleton(as: TwoEntitiesToViewModelMapper<Post, User, PostVM>)
class PostMapper implements TwoEntitiesToViewModelMapper<Post, User, PostVM> {
  const PostMapper({
    required FormattedDateProvider formattedDateProvider,
    required BeautifiedNumberProvider beautifiedNumberProvider,
  })  : _formattedDateProvider = formattedDateProvider,
        _beautifiedNumberProvider = beautifiedNumberProvider;

  final FormattedDateProvider _formattedDateProvider;
  final BeautifiedNumberProvider _beautifiedNumberProvider;

  @override
  PostVM map(Post post, User user) {
    return PostVM(
      id: post.id.str,
      authorID: post.authorID.str,
      authorName: user.map(
        staff: (user) => user.name,
        end: (user) => user.name ?? user.email,
      ),
      avatarUrl: user.avatarUrls.firstOrNull,
      text: post.text,
      commentsAmount: _beautifiedNumberProvider.beautify(post.commentsAmount),
      createdAt: _formattedDateProvider.inRelationToNow(post.createdAt),
      mediaUrls: post.mediaUrls,
      likedByMe: post.likedByMe,
    );
  }
}

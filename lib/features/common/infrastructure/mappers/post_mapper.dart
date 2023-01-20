import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';

@Singleton(as: TwoEntitiesToViewModelMapper<Post, User, PostVM>)
class PostMapper implements TwoEntitiesToViewModelMapper<Post, User, PostVM> {
  const PostMapper({
    required FormattedDateProvider formattedDateProvider,
  }) : _formattedDateProvider = formattedDateProvider;

  final FormattedDateProvider _formattedDateProvider;

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
      commentsAmount: post.commentsAmount != 0 ? '${post.commentsAmount}' : '',
      createdAt: _formattedDateProvider.inRelationToNow(post.createdAt),
      mediaUrls: post.mediaUrls,
      likedByMe: post.likedByMe,
    );
  }
}

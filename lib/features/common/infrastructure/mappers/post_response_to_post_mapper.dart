import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@Singleton(as: OneInputMapper<Map<String, dynamic>, Post>)
class PostResponseToPostMapper
    implements OneInputMapper<Map<String, dynamic>, Post> {
  @override
  Post map(Map<String, dynamic> postResponse) {
    return Post(
      id: PostID(postResponse['id']),
      authorID: UserID(postResponse['authorID']),
      createdAt: (postResponse['createdAt'] as Timestamp).toDate(),
      text: postResponse['text'],
      mediaUrls: (postResponse['mediaUrls'] as List).cast<String>(),
      tags: (postResponse['tags'] as List).cast<String>(),
      likedByMe: postResponse['likedByMe'],
      likesAmount: postResponse['likesAmount'],
      commentsAmount: postResponse['commentsAmount'],
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@Singleton(as: PostRepository)
class FirebasePostRepository implements PostRepository {
  FirebasePostRepository({
    required FirebaseFirestore firebaseFirestore,
    required OneInputMapper<Map<String, dynamic>, Post> postMapper,
  })  : _posts = firebaseFirestore.collection('posts'),
        _postMapper = postMapper;

  final CollectionReference _posts;
  final OneInputMapper<Map<String, dynamic>, Post> _postMapper;
  final _storage = <PostID, Post>{};
  QueryDocumentSnapshot? _lastDocSnapshot;

  @override
  Future<Post?> getOrLoadPost({required PostID postID}) async {
    final saved = _storage[postID];

    if (saved != null) {
      return saved;
    }

    return loadPost(postID: postID);
  }

  @override
  Future<Post?> loadPost({required PostID postID}) async {
    final result = await _posts.doc(postID.str).get();

    Post? post;
    if (result.exists) {
      // TODO: implement
      // post = Post.fromJson(result.data() as Map<String, Object?>);
      // _storage[result.get('id')] = post;
    }

    return post;
  }

  @override
  Future<List<Post>> loadPosts({
    required String category,
    required int limit,
    required bool nextPage,
  }) async {
    final query = _posts
        .where('tags', arrayContains: category)
        .orderBy('createdAt')
        .limitToLast(limit);

    final lastDocSnapshot = _lastDocSnapshot;

    late final QuerySnapshot result;
    if (nextPage && lastDocSnapshot != null) {
      result = await query.startAfterDocument(lastDocSnapshot).get();
    } else {
      result = await query.get();
    }

    _lastDocSnapshot = result.docs.lastOrNull;

    final posts = result.docs
        .map((e) => _postMapper.map(e.data() as Map<String, dynamic>))
        .toList();

    for (final p in posts) {
      _storage[p.id] = p;
    }

    return posts;
  }
}

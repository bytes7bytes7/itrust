import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/post_service.dart';
import '../../coordinators/post_coordinator.dart';
import '../post_comment/post_comment_store.dart';

part 'post_store.g.dart';

@injectable
class PostStore = _PostStore with _$PostStore;

abstract class _PostStore extends SyncStore with Store {
  _PostStore({
    required this.postCommentStore,
    required PostService postService,
    required PostCoordinator postCoordinator,
    required TwoEntitiesToViewModelMapper<Post, User, PostVM> postMapper,
  })  : _postService = postService,
        _postCoordinator = postCoordinator,
        _postMapper = postMapper;

  final PostCommentStore postCommentStore;

  final PostService _postService;
  final PostCoordinator _postCoordinator;
  final TwoEntitiesToViewModelMapper<Post, User, PostVM> _postMapper;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  PostVM? _post;

  @action
  void loadPost({required String postID}) {
    perform(
      () async {
        _postID = postID;
        final post = await _postService.loadPost(PostID(postID));

        // TODO: implement
        const user = User.end(
          id: UserID('user'),
          avatarUrls: [],
          email: 'email@email.com',
        );

        _post = _postMapper.map(post, user);

        postCommentStore.loadPostComments(postID: postID);
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void onLikePostPressed() {
    // TODO: implement
    final post = _post;

    if (post != null) {
      _post = post.copyWith(
        likedByMe: !post.likedByMe,
      );
    }
  }

  @action
  Future<void> refresh() async {
    final postID = _postID;

    if (postID != null) {
      loadPost(postID: postID);
    }
  }

  void onBackButtonPressed() {
    _postCoordinator.onBackButtonPressed();
  }
}

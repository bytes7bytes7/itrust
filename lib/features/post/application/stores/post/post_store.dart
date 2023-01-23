import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/post_service.dart';
import '../../coordinators/post_coordinator.dart';
import '../../providers/post_string_provider.dart';
import '../post_comment/post_comment_store.dart';

part 'post_store.g.dart';

@injectable
class PostStore = _PostStore with _$PostStore;

abstract class _PostStore extends SyncStore with Store {
  _PostStore({
    required this.postCommentStore,
    required PostService postService,
    required PostCoordinator postCoordinator,
    required PostStringProvider postStringProvider,
    required TwoInputsMapper<Post, User, PostVM> postMapper,
  })  : _postService = postService,
        _postCoordinator = postCoordinator,
        _postStringProvider = postStringProvider,
        _postMapper = postMapper;

  final PostCommentStore postCommentStore;

  final PostService _postService;
  final PostCoordinator _postCoordinator;
  final PostStringProvider _postStringProvider;
  final TwoInputsMapper<Post, User, PostVM> _postMapper;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  PostVM? _post;

  @computed
  bool get hasError => _error.isNotEmpty;

  @computed
  bool get isAllLoaded =>
      !_isLoading &&
      !hasError &&
      !postCommentStore.isLoading &&
      !postCommentStore.hasError;

  @action
  void loadPost({required String postID}) {
    perform(
      () async {
        try {
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
        } catch (e) {
          _error = _postStringProvider.canNotLoadPost;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  Future<void> refresh() async {
    final postID = _postID;

    if (postID != null) {
      loadPost(postID: postID);
    }
  }

  @action
  void retry() {
    final postID = _postID;

    if (postID != null) {
      loadPost(postID: postID);
    }
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

  void onBackButtonPressed() {
    _postCoordinator.onBackButtonPressed();
  }
}

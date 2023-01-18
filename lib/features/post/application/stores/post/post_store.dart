import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../../domain/services/post_service.dart';
import '../../coordinators/post_coordinator.dart';
import '../comment/comment_store.dart';

part 'post_store.g.dart';

@injectable
class PostStore = _PostStore with _$PostStore;

abstract class _PostStore extends SyncStore with Store {
  _PostStore({
    required this.commentStore,
    required PostService postService,
    required PostCoordinator postCoordinator,
  })  : _postService = postService,
        _postCoordinator = postCoordinator;

  final CommentStore commentStore;

  final PostService _postService;
  final PostCoordinator _postCoordinator;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String? _postID;

  @readonly
  String _authorName = '';

  @readonly
  String _createdAt = '';

  @readonly
  String? _avatarUrl;

  @readonly
  List<String> _mediaUrls = const [];

  @readonly
  String _text = '';

  @readonly
  bool _isLickedByMe = false;

  @action
  void loadPost(String postID) {
    perform(
      () async {
        _postID = _postID;
        final post = await _postService.loadPost(PostID(postID));

        // TODO: implement
        _authorName = 'name ${post.authorID}';
        _createdAt = '9:41';
        _avatarUrl = null;
        _mediaUrls = post.mediaUrls;
        _text = post.text;
        _isLickedByMe = false;
      },
      setIsLoading: (v) => _isLoading = v,
      setError: (v) => _error = v,
    );
  }

  @action
  void onIsLickedPostChanged() {
    _isLickedByMe = !_isLickedByMe;
  }

  void onBackButtonPressed() {
    _postCoordinator.onBackButtonPressed();
  }
}

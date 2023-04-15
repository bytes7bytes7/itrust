import 'package:injectable/injectable.dart';

import '../../../common/domain/services/keep_fresh_token_service.dart';
import '../providers/feed_provider.dart';

@singleton
class CategoryService {
  const CategoryService({
    required KeepFreshTokenService keepFreshTokenService,
    required FeedProvider feedProvider,
  })  : _keepFreshTokenService = keepFreshTokenService,
        _feedProvider = feedProvider;

  final KeepFreshTokenService _keepFreshTokenService;
  final FeedProvider _feedProvider;

  // TODO: add tag repo and cached param
  Future<List<String>> loadCategories() async {
    try {
      final response =
          await _keepFreshTokenService.request(_feedProvider.getTags);

      return response.value.fold(
        (l) {
          // TODO: implement
          throw Exception();
        },
        (r) {
          return r.tags;
        },
      );
    } catch (e) {
      // TODO: implement
      rethrow;
    }
  }
}

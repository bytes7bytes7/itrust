import 'package:injectable/injectable.dart';

import '../../../common/domain/domain.dart';

@singleton
class ChatService {
  Future<List<Message>> load({
    required int limit,
    required int offset,
  }) async {
    // TODO: implement
    return [];
  }
}

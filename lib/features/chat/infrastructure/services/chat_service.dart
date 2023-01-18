import 'package:injectable/injectable.dart';

import '../../../common/domain/domain.dart';
import '../../domain/services/chat_service.dart';

@test
@Singleton(as: ChatService)
class TestChatService implements ChatService {
  @override
  Future<List<Message>> load({required int limit, required int offset}) async {
    return [];
  }
}

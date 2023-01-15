import 'package:injectable/injectable.dart';

import '../../../common/domain/entity/message/message.dart';
import '../../domain/service/chat_service.dart';

@test
@Singleton(as: ChatService)
class TestChatService implements ChatService {
  @override
  Future<List<Message>> load({required int limit, required int offset}) async {
    return [];
  }
}

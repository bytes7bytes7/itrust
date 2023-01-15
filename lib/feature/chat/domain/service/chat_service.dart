import '../../../common/domain/domain.dart';

abstract class ChatService {
  Future<List<Message>> load({
    required int limit,
    required int offset,
  });
}

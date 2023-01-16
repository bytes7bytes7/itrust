import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'new_chat_store.g.dart';

@injectable
class NewChatStore = _NewChatStore with _$NewChatStore;

abstract class _NewChatStore with Store {}

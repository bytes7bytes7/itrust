import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';

part 'chat_info_store.g.dart';

@injectable
class ChatInfoStore = _ChatInfoStore with _$ChatInfoStore;

abstract class _ChatInfoStore extends SyncStore with Store {
  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';
}

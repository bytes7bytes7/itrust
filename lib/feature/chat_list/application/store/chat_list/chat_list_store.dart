import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/store/search/search_store.dart';
import '../../../domain/domain.dart';

part 'chat_list_store.g.dart';

final _logger = Logger('$ChatListStore');

class ChatListStore = _ChatListStore with _$ChatListStore;

abstract class _ChatListStore extends SearchStore<Chat>
    with Store, Loadable, Errorable {
  _ChatListStore({
    required super.searchRepository,
    required super.isSelectedAlgorithm,
  });
}

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/mixin/mixin.dart';
import '../../../../common/application/store/search/search_store.dart';
import '../../../../common/domain/domain.dart';

part 'new_chat_store.g.dart';

class NewChatStore = _NewChatStore with _$NewChatStore;

abstract class _NewChatStore extends SearchStore<User>
    with Store, Loadable, Errorable {
  _NewChatStore({
    required super.searchRepository,
    required super.isSelectedAlgorithm,
  });
}

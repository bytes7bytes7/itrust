// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i14;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i8;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i13;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i9;
import 'package:itrust/feature/common/domain/domain.dart' as _i3;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i12;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i10;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i11;
import 'package:itrust/main/application/store/home_store/home_store.dart'
    as _i7;
import 'package:itrust/main/domain/service/home_service.dart' as _i5;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i6;

const String _test = 'test';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ChatRepository>(
    () => _i4.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.HomeService>(_i6.ProdHomeService());
  gh.singleton<_i7.HomeStore>(
      _i7.HomeStore(homeService: gh<_i5.HomeService>()));
  gh.singleton<_i3.SearchRepository<_i3.Message>>(
    _i8.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i3.SearchRepository<_i3.Chat>>(
    _i9.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i10.ChatListService>(
    () => _i11.ProdChatListService(chatRepository: gh<_i12.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i13.ChatListStore>(
      _i13.ChatListStore(chatListService: gh<_i3.ChatListService>()));
  gh.singleton<_i14.ChatStore>(_i14.ChatStore(
      searchRepository: gh<_i3.SearchRepository<_i3.Message>>()));
  return getIt;
}

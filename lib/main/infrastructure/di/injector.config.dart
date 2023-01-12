// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i5;
import 'package:itrust/feature/auth/domain/service/auth_service.dart' as _i3;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i18;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i12;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i17;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i13;
import 'package:itrust/feature/common/domain/domain.dart' as _i6;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i16;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i14;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i7;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i15;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i8;
import 'package:itrust/main/application/store/home_store/home_store.dart'
    as _i11;
import 'package:itrust/main/domain/service/home_service.dart' as _i9;
import 'package:itrust/main/infrastructure/service/auth_service.dart' as _i4;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i10;

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
  gh.singleton<_i3.AuthService>(_i4.ProdAuthService());
  gh.singleton<_i5.AuthStore>(
      _i5.AuthStore(authService: gh<_i3.AuthService>()));
  gh.lazySingleton<_i6.ChatRepository>(
    () => _i7.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.ConnectionStore>(_i8.ConnectionStore());
  gh.singleton<_i9.HomeService>(_i10.ProdHomeService());
  gh.singleton<_i11.HomeStore>(
      _i11.HomeStore(homeService: gh<_i9.HomeService>()));
  gh.singleton<_i6.SearchRepository<_i6.Message>>(
    _i12.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i6.SearchRepository<_i6.Chat>>(
    _i13.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i14.ChatListService>(
    () => _i15.ProdChatListService(chatRepository: gh<_i16.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i17.ChatListStore>(
      _i17.ChatListStore(chatListService: gh<_i6.ChatListService>()));
  gh.singleton<_i18.ChatStore>(_i18.ChatStore(
      searchRepository: gh<_i6.SearchRepository<_i6.Message>>()));
  return getIt;
}

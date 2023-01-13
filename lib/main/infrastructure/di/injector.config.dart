// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i5;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i24;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i15;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i23;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i16;
import 'package:itrust/feature/common/domain/domain.dart' as _i6;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i22;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i3;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i20;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i7;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i21;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i8;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i14;
import 'package:itrust/feature/menu/domain/service/menu_service.dart' as _i12;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i19;
import 'package:itrust/feature/settings/domain/service/settings_service.dart'
    as _i17;
import 'package:itrust/main/application/store/home_store/home_store.dart'
    as _i11;
import 'package:itrust/main/domain/service/home_service.dart' as _i9;
import 'package:itrust/main/infrastructure/service/auth_service.dart' as _i4;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i10;
import 'package:itrust/main/infrastructure/service/menu_service.dart' as _i13;
import 'package:itrust/main/infrastructure/service/settings_service.dart'
    as _i18;

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
  gh.lazySingleton<_i5.AuthStore>(
      () => _i5.AuthStore(authService: gh<_i3.AuthService>()));
  gh.lazySingleton<_i6.ChatRepository>(
    () => _i7.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.ConnectionStore>(_i8.ConnectionStore());
  gh.singleton<_i9.HomeService>(_i10.ProdHomeService());
  gh.singleton<_i11.HomeStore>(
      _i11.HomeStore(homeService: gh<_i9.HomeService>()));
  gh.singleton<_i12.MenuService>(_i13.ProdMenuService());
  gh.singleton<_i14.MenuStore>(
      _i14.MenuStore(menuService: gh<_i12.MenuService>()));
  gh.singleton<_i6.SearchRepository<_i6.Message>>(
    _i15.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i6.SearchRepository<_i6.Chat>>(
    _i16.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i17.SettingsService>(_i18.ProdSettingsService());
  gh.singleton<_i19.SettingsStore>(
      _i19.SettingsStore(settingsService: gh<_i17.SettingsService>()));
  gh.lazySingleton<_i20.ChatListService>(
    () => _i21.ProdChatListService(chatRepository: gh<_i22.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i23.ChatListStore>(
      _i23.ChatListStore(chatListService: gh<_i6.ChatListService>()));
  gh.singleton<_i24.ChatStore>(_i24.ChatStore(
      searchRepository: gh<_i6.SearchRepository<_i6.Message>>()));
  return getIt;
}

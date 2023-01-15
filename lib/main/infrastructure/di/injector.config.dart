// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i21;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i26;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i13;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i25;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i14;
import 'package:itrust/feature/common/domain/domain.dart' as _i3;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i24;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i19;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i22;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i18;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i23;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i5;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i12;
import 'package:itrust/feature/menu/domain/service/menu_service.dart' as _i10;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i17;
import 'package:itrust/feature/settings/domain/service/settings_service.dart'
    as _i15;
import 'package:itrust/main/application/store/home_store/home_store.dart'
    as _i9;
import 'package:itrust/main/domain/service/home_service.dart' as _i7;
import 'package:itrust/main/infrastructure/service/auth_service.dart' as _i20;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i8;
import 'package:itrust/main/infrastructure/service/menu_service.dart' as _i11;
import 'package:itrust/main/infrastructure/service/settings_service.dart'
    as _i16;

import '../third_party/firebase_module.dart' as _i27;

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
  final firebaseModule = _$FirebaseModule();
  gh.lazySingleton<_i3.ChatRepository>(
    () => _i4.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.ConnectionStore>(_i5.ConnectionStore());
  gh.singleton<_i6.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i7.HomeService>(_i8.ProdHomeService());
  gh.singleton<_i9.HomeStore>(
      _i9.HomeStore(homeService: gh<_i7.HomeService>()));
  gh.singleton<_i10.MenuService>(_i11.ProdMenuService());
  gh.singleton<_i12.MenuStore>(
      _i12.MenuStore(menuService: gh<_i10.MenuService>()));
  gh.singleton<_i3.SearchRepository<_i3.Message>>(
    _i13.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i3.SearchRepository<_i3.Chat>>(
    _i14.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i15.SettingsService>(
      _i16.ProdSettingsService(firebaseAuth: gh<_i6.FirebaseAuth>()));
  gh.singleton<_i17.SettingsStore>(
      _i17.SettingsStore(settingsService: gh<_i15.SettingsService>()));
  gh.singleton<_i3.UserRepository>(
      _i18.ProdUserRepository(firebaseAuth: gh<_i6.FirebaseAuth>()));
  gh.singleton<_i19.AuthService>(
      _i20.ProdAuthService(firebaseAuth: gh<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i21.AuthStore>(
      () => _i21.AuthStore(authService: gh<_i19.AuthService>()));
  gh.lazySingleton<_i22.ChatListService>(
    () => _i23.ProdChatListService(chatRepository: gh<_i24.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i25.ChatListStore>(
      _i25.ChatListStore(chatListService: gh<_i3.ChatListService>()));
  gh.singleton<_i26.ChatStore>(_i26.ChatStore(
      searchRepository: gh<_i3.SearchRepository<_i3.Message>>()));
  return getIt;
}

class _$FirebaseModule extends _i27.FirebaseModule {}

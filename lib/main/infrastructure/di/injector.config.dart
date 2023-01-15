// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i24;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i7;
import 'package:itrust/feature/chat/domain/service/chat_service.dart' as _i5;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i16;
import 'package:itrust/feature/chat/infrastructure/service/chat_service.dart'
    as _i6;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i28;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i17;
import 'package:itrust/feature/common/domain/domain.dart' as _i3;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i27;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i22;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i25;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i21;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i26;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i8;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i15;
import 'package:itrust/feature/menu/domain/service/menu_service.dart' as _i13;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i20;
import 'package:itrust/feature/settings/domain/service/settings_service.dart'
    as _i18;
import 'package:itrust/main/application/store/home_store/home_store.dart'
    as _i12;
import 'package:itrust/main/domain/service/home_service.dart' as _i10;
import 'package:itrust/main/infrastructure/service/auth_service.dart' as _i23;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i11;
import 'package:itrust/main/infrastructure/service/menu_service.dart' as _i14;
import 'package:itrust/main/infrastructure/service/settings_service.dart'
    as _i19;

import '../third_party/firebase_module.dart' as _i29;

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
  gh.singleton<_i5.ChatService>(
    _i6.TestChatService(),
    registerFor: {_test},
  );
  gh.singleton<_i7.ChatStore>(
      _i7.ChatStore(chatService: gh<_i5.ChatService>()));
  gh.singleton<_i8.ConnectionStore>(_i8.ConnectionStore());
  gh.singleton<_i9.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i10.HomeService>(_i11.ProdHomeService());
  gh.singleton<_i12.HomeStore>(
      _i12.HomeStore(homeService: gh<_i10.HomeService>()));
  gh.singleton<_i13.MenuService>(_i14.ProdMenuService());
  gh.singleton<_i15.MenuStore>(
      _i15.MenuStore(menuService: gh<_i13.MenuService>()));
  gh.singleton<_i3.SearchRepository<_i3.Message>>(
    _i16.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i3.SearchRepository<_i3.Chat>>(
    _i17.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i18.SettingsService>(
      _i19.ProdSettingsService(firebaseAuth: gh<_i9.FirebaseAuth>()));
  gh.singleton<_i20.SettingsStore>(
      _i20.SettingsStore(settingsService: gh<_i18.SettingsService>()));
  gh.singleton<_i3.UserRepository>(
      _i21.ProdUserRepository(firebaseAuth: gh<_i9.FirebaseAuth>()));
  gh.singleton<_i22.AuthService>(
      _i23.ProdAuthService(firebaseAuth: gh<_i9.FirebaseAuth>()));
  gh.lazySingleton<_i24.AuthStore>(
      () => _i24.AuthStore(authService: gh<_i22.AuthService>()));
  gh.lazySingleton<_i25.ChatListService>(
    () => _i26.ProdChatListService(chatRepository: gh<_i27.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i28.ChatListStore>(
      _i28.ChatListStore(chatListService: gh<_i3.ChatListService>()));
  return getIt;
}

class _$FirebaseModule extends _i29.FirebaseModule {}

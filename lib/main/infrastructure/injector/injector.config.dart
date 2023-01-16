// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i35;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/coordinator/auth_coordinator.dart'
    as _i36;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i39;
import 'package:itrust/feature/auth/application/store/rules/rules_store.dart'
    as _i23;
import 'package:itrust/feature/auth/auth.dart' as _i21;
import 'package:itrust/feature/auth/domain/service/rules_service.dart' as _i24;
import 'package:itrust/feature/auth/infrastructure/service/rules_service.dart'
    as _i22;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i7;
import 'package:itrust/feature/chat/domain/service/chat_service.dart' as _i5;
import 'package:itrust/feature/chat/infrastructure/service/chat_service.dart'
    as _i6;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i34;
import 'package:itrust/feature/common/common.dart' as _i38;
import 'package:itrust/feature/common/domain/domain.dart' as _i3;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i33;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i29;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i31;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i28;
import 'package:itrust/feature/common/infrastructure/service/auth_service.dart'
    as _i30;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i32;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i8;
import 'package:itrust/feature/lock/application/store/lock/lock_store.dart'
    as _i16;
import 'package:itrust/feature/lock/domain/service/lock_service.dart' as _i14;
import 'package:itrust/feature/lock/infrastructure/service/lock_service.dart'
    as _i15;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i19;
import 'package:itrust/feature/menu/domain/service/menu_service.dart' as _i17;
import 'package:itrust/feature/new_chat/application/store/new_chat/new_chat_store.dart'
    as _i20;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i27;
import 'package:itrust/feature/settings/domain/service/settings_service.dart'
    as _i25;
import 'package:itrust/main/application/store/home/home_store.dart' as _i13;
import 'package:itrust/main/domain/service/home_service.dart' as _i11;
import 'package:itrust/main/infrastructure/coordinator/auth_coordinator.dart'
    as _i37;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i12;
import 'package:itrust/main/infrastructure/service/menu_service.dart' as _i18;
import 'package:itrust/main/infrastructure/service/settings_service.dart'
    as _i26;

import '../router/router.dart' as _i40;
import '../third_party/firebase_module.dart' as _i41;

const String _test = 'test';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseModule = _$FirebaseModule();
  final routerModule = _$RouterModule();
  gh.lazySingleton<_i3.ChatRepository>(
    () => _i4.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.ChatService>(
    _i6.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i7.ChatStore>(
      () => _i7.ChatStore(chatService: gh<_i5.ChatService>()));
  gh.factory<_i8.ConnectionStore>(() => _i8.ConnectionStore());
  gh.singleton<_i9.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i10.GlobalKey<_i10.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i11.HomeService>(_i12.ProdHomeService(
      navigatorKey: gh<_i10.GlobalKey<_i10.NavigatorState>>()));
  gh.factory<_i13.HomeStore>(
      () => _i13.HomeStore(homeService: gh<_i11.HomeService>()));
  gh.singleton<_i14.LockService>(
    _i15.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i16.LockStore>(
      () => _i16.LockStore(lockService: gh<_i14.LockService>()));
  gh.singleton<_i17.MenuService>(_i18.ProdMenuService());
  gh.factory<_i19.MenuStore>(
      () => _i19.MenuStore(menuService: gh<_i17.MenuService>()));
  gh.factory<_i20.NewChatStore>(() => _i20.NewChatStore());
  gh.singleton<_i21.RulesService>(
    _i22.TestRulesService(),
    registerFor: {_test},
  );
  gh.factory<_i23.RulesStore>(
      () => _i23.RulesStore(rulesService: gh<_i24.RulesService>()));
  gh.singleton<_i25.SettingsService>(_i26.ProdSettingsService(
    firebaseAuth: gh<_i9.FirebaseAuth>(),
    navigatorKey: gh<_i10.GlobalKey<_i10.NavigatorState>>(),
  ));
  gh.factory<_i27.SettingsStore>(
      () => _i27.SettingsStore(settingsService: gh<_i25.SettingsService>()));
  gh.singleton<_i3.UserRepository>(
      _i28.ProdUserRepository(firebaseAuth: gh<_i9.FirebaseAuth>()));
  await gh.singletonAsync<_i29.AuthService>(
    () {
      final i = _i30.ProdAuthService(firebaseAuth: gh<_i9.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i31.ChatListService>(
    () => _i32.ProdChatListService(chatRepository: gh<_i33.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i34.ChatListStore>(
      () => _i34.ChatListStore(chatListService: gh<_i3.ChatListService>()));
  gh.singleton<_i35.GoRouter>(routerModule.router(
    gh<_i10.GlobalKey<_i10.NavigatorState>>(),
    gh<_i29.AuthService>(),
  ));
  gh.singleton<_i36.AuthCoordinator>(
    _i37.ProdAuthCoordinator(
      navigatorKey: gh<_i10.GlobalKey<_i10.NavigatorState>>(),
      authService: gh<_i38.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i39.AuthStore>(() => _i39.AuthStore(
        authService: gh<_i29.AuthService>(),
        authCoordinator: gh<_i36.AuthCoordinator>(),
      ));
  return getIt;
}

class _$RouterModule extends _i40.RouterModule {}

class _$FirebaseModule extends _i41.FirebaseModule {}

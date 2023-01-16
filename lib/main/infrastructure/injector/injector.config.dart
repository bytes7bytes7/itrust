// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:flutter/cupertino.dart' as _i41;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i38;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/coordinator/auth_coordinator.dart'
    as _i39;
import 'package:itrust/feature/auth/application/coordinator/rules_coordinator.dart'
    as _i20;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i43;
import 'package:itrust/feature/auth/application/store/rules/rules_store.dart'
    as _i24;
import 'package:itrust/feature/auth/auth.dart' as _i22;
import 'package:itrust/feature/auth/domain/service/rules_service.dart' as _i25;
import 'package:itrust/feature/auth/infrastructure/service/rules_service.dart'
    as _i23;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i7;
import 'package:itrust/feature/chat/domain/service/chat_service.dart' as _i5;
import 'package:itrust/feature/chat/infrastructure/service/chat_service.dart'
    as _i6;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i37;
import 'package:itrust/feature/common/common.dart' as _i42;
import 'package:itrust/feature/common/domain/domain.dart' as _i3;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i36;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i32;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i34;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i31;
import 'package:itrust/feature/common/infrastructure/service/auth_service.dart'
    as _i33;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i35;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i8;
import 'package:itrust/feature/lock/application/store/lock/lock_store.dart'
    as _i16;
import 'package:itrust/feature/lock/domain/service/lock_service.dart' as _i14;
import 'package:itrust/feature/lock/infrastructure/service/lock_service.dart'
    as _i15;
import 'package:itrust/feature/menu/application/coordinator/menu_coordinator.dart'
    as _i17;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i19;
import 'package:itrust/feature/settings/application/coordinator/settings_coordinator.dart'
    as _i26;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i30;
import 'package:itrust/feature/settings/domain/service/settings_service.dart'
    as _i28;
import 'package:itrust/feature/settings/infrastructure/service/settings_service.dart'
    as _i29;
import 'package:itrust/main/application/store/home/home_store.dart' as _i13;
import 'package:itrust/main/domain/service/home_service.dart' as _i11;
import 'package:itrust/main/infrastructure/coordinator/auth_coordinator.dart'
    as _i40;
import 'package:itrust/main/infrastructure/coordinator/menu_coordinator.dart'
    as _i18;
import 'package:itrust/main/infrastructure/coordinator/rules_coordinator.dart'
    as _i21;
import 'package:itrust/main/infrastructure/coordinator/settings_coordinator.dart'
    as _i27;
import 'package:itrust/main/infrastructure/service/home_service.dart' as _i12;

import '../router/router.dart' as _i44;
import '../third_party/firebase_module.dart' as _i45;

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
  gh.singleton<_i17.MenuCoordinator>(_i18.ProdMenuCoordinator(
      navigatorKey: gh<_i10.GlobalKey<_i10.NavigatorState>>()));
  gh.factory<_i19.MenuStore>(
      () => _i19.MenuStore(menuCoordinator: gh<_i17.MenuCoordinator>()));
  gh.singleton<_i20.RulesCoordinator>(_i21.ProdRulesCoordinator(
      navigatorKey: gh<_i10.GlobalKey<_i10.NavigatorState>>()));
  gh.singleton<_i22.RulesService>(
    _i23.TestRulesService(),
    registerFor: {_test},
  );
  gh.factory<_i24.RulesStore>(() => _i24.RulesStore(
        rulesService: gh<_i25.RulesService>(),
        rulesCoordinator: gh<_i20.RulesCoordinator>(),
      ));
  gh.singleton<_i26.SettingsCoordinator>(_i27.ProdSettingsCoordinator(
      navigatorKey: gh<_i10.GlobalKey<_i10.NavigatorState>>()));
  gh.singleton<_i28.SettingsService>(
      _i29.ProdSettingsService(firebaseAuth: gh<_i9.FirebaseAuth>()));
  gh.factory<_i30.SettingsStore>(() => _i30.SettingsStore(
        settingsService: gh<_i28.SettingsService>(),
        settingsCoordinator: gh<_i26.SettingsCoordinator>(),
      ));
  gh.singleton<_i3.UserRepository>(
      _i31.ProdUserRepository(firebaseAuth: gh<_i9.FirebaseAuth>()));
  await gh.singletonAsync<_i32.AuthService>(
    () {
      final i = _i33.ProdAuthService(firebaseAuth: gh<_i9.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.lazySingleton<_i34.ChatListService>(
    () => _i35.ProdChatListService(chatRepository: gh<_i36.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i37.ChatListStore>(
      () => _i37.ChatListStore(chatListService: gh<_i3.ChatListService>()));
  gh.singleton<_i38.GoRouter>(routerModule.router(
    gh<_i10.GlobalKey<_i10.NavigatorState>>(),
    gh<_i32.AuthService>(),
  ));
  gh.singleton<_i39.AuthCoordinator>(
    _i40.ProdAuthCoordinator(
      navigatorKey: gh<_i41.GlobalKey<_i41.NavigatorState>>(),
      authService: gh<_i42.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i43.AuthStore>(() => _i43.AuthStore(
        authService: gh<_i32.AuthService>(),
        authCoordinator: gh<_i39.AuthCoordinator>(),
      ));
  return getIt;
}

class _$RouterModule extends _i44.RouterModule {}

class _$FirebaseModule extends _i45.FirebaseModule {}

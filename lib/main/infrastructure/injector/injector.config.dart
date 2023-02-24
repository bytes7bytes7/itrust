// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:flutter/material.dart' as _i20;
import 'package:flutter/widgets.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i63;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i70;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i77;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i81;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i48;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i69;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i76;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i79;
import 'package:itrust/features/auth/auth.dart' as _i34;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i80;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i49;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i35;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i37;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i18;
import 'package:itrust/features/common/common.dart' as _i60;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i44;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/providers/auth_provider/auth_provider.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/providers/beautified_number_provider.dart'
    as _i50;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/providers/formatted_date_provider.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/providers/suffix_number_provider.dart'
    as _i38;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i57;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i64;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i91;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i51;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i61;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i95;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i90;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i58;
import 'package:itrust/features/feed/infrastructure/providers/category_string_provider.dart'
    as _i52;
import 'package:itrust/features/feed/infrastructure/providers/feed_string_provider.dart'
    as _i62;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i59;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i23;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i21;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i22;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i73;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i72;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i87;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i94;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i53;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i55;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i25;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i32;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i88;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i86;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i93;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i92;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i30;
import 'package:itrust/features/post/infrastructure/providers/comment_reply_string_provider.dart'
    as _i54;
import 'package:itrust/features/post/infrastructure/providers/comment_string_provider.dart'
    as _i56;
import 'package:itrust/features/post/infrastructure/providers/post_comment_string_provider.dart'
    as _i26;
import 'package:itrust/features/post/infrastructure/providers/post_string_provider.dart'
    as _i33;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i31;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i28;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i84;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i83;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i41;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i39;
import 'package:itrust/features/user_wall/infrastructure/providers/user_info_string_provider.dart'
    as _i42;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i40;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i65;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i67;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i85;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i89;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i66;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i68;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i71;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i74;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i75;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i78;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i82;
import 'package:itrust/utils/server_settings.dart' as _i36;
import 'package:itrust/utils/utils.dart' as _i46;
import 'package:mapster/mapster.dart' as _i24;

import '../../../env/env_module.dart' as _i99;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i96;
import '../router/router.dart' as _i97;
import '../third_party/dio_module.dart' as _i98;

const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
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
  final dioModule = _$DioModule();
  final routerModule = _$RouterModule();
  final mapsterModule = _$MapsterModule();
  final envModule = _$EnvModule();
  gh.singleton<_i3.CategoryService>(
    _i4.TestCategoryService(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i5.ChatListService>(
    () => _i6.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i7.ChatListStore>(
      _i7.ChatListStore(chatListService: gh<_i5.ChatListService>()));
  gh.lazySingleton<_i5.ChatRepository>(
    () => _i8.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i9.ChatService>(
    _i10.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i11.ChatStore>(
      () => _i11.ChatStore(chatService: gh<_i9.ChatService>()));
  gh.singleton<_i12.CommentService>(
    _i13.TestCommentService(),
    registerFor: {_test},
  );
  gh.factory<_i14.ConnectionStore>(() => _i14.ConnectionStore());
  gh.singleton<_i15.DateTimeProvider>(_i16.ProdDateTimeProvider());
  gh.singleton<_i17.Dio>(dioModule.dio);
  gh.singleton<_i18.FormattedDateProvider>(_i19.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i15.DateTimeProvider>()));
  gh.singleton<_i20.GlobalKey<_i20.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i21.LockService>(
    _i22.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i23.LockStore>(
      () => _i23.LockStore(lockService: gh<_i21.LockService>()));
  gh.singleton<_i24.Mapster>(mapsterModule.mapster);
  gh.singleton<_i25.PostCommentStringProvider>(
      _i26.ProdPostCommentStringProvider(
          navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i28.PostMapsterRegistrar>(
      _i28.PostMapsterRegistrar(gh<_i24.Mapster>())..register());
  gh.singleton<_i5.PostRepository>(_i29.ProdPostRepository());
  gh.singleton<_i30.PostService>(
    _i31.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i32.PostStringProvider>(_i33.ProdPostStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i34.RulesService>(
    _i35.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i36.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i37.SuffixNumberProvider>(_i38.ProdSuffixNumberProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i39.UserInfoService>(_i40.TestUserService());
  gh.singleton<_i41.UserInfoStringProvider>(_i42.ProdUserInfoStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i5.UserRepository>(
    _i43.TestUserRepository(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i44.AuthProvider>(_i45.ProdAuthProvider(
    gh<_i17.Dio>(),
    gh<_i46.ServerSettings>(),
  ));
  await gh.singletonAsync<_i47.AuthService>(
    () {
      final i = _i47.AuthService(authProvider: gh<_i44.AuthProvider>());
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i48.AuthStringProvider>(_i49.ProdAuthStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i37.BeautifiedNumberProvider>(_i50.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i37.SuffixNumberProvider>()));
  gh.singleton<_i51.CategoryStringProvider>(_i52.ProdCategoryStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i53.CommentReplyStringProvider>(
      _i54.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i55.CommentStringProvider>(_i56.ProdCommentStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i57.CommonMapsterRegistrar>(
      _i57.CommonMapsterRegistrar(gh<_i24.Mapster>())..register());
  gh.singleton<_i58.FeedService>(_i59.ProdFeedService(
    postRepository: gh<_i60.PostRepository>(),
    userRepository: gh<_i60.UserRepository>(),
  ));
  gh.singleton<_i61.FeedStringProvider>(_i62.ProdFeedStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.singleton<_i63.GoRouter>(routerModule.router(
    gh<_i20.GlobalKey<_i20.NavigatorState>>(),
    gh<_i64.AuthService>(),
  ));
  gh.singleton<_i65.HomeCoordinator>(
    _i66.ProdHomeCoordinator(goRouter: gh<_i63.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i67.HomeStore>(
      () => _i67.HomeStore(homeCoordinator: gh<_i65.HomeCoordinator>()));
  gh.singleton<_i64.LogInCoordinator>(
    _i68.ProdLogInCoordinator(
      goRouter: gh<_i63.GoRouter>(),
      authService: gh<_i64.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i69.LogInStore>(() => _i69.LogInStore(
        authService: gh<_i5.AuthService>(),
        logInCoordinator: gh<_i70.LogInCoordinator>(),
        authStringProvider: gh<_i48.AuthStringProvider>(),
      ));
  gh.singleton<_i64.MenuCoordinator>(
      _i71.ProdMenuCoordinator(goRouter: gh<_i63.GoRouter>()));
  gh.singleton<_i72.MenuStore>(
      _i72.MenuStore(menuCoordinator: gh<_i73.MenuCoordinator>()));
  gh.singleton<_i64.PostCoordinator>(
      _i74.ProdPostCoordinator(goRouter: gh<_i63.GoRouter>()));
  gh.singleton<_i64.RegisterCoordinator>(
    _i75.ProdRegisterCoordinator(
      goRouter: gh<_i63.GoRouter>(),
      authService: gh<_i64.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i76.RegisterStore>(() => _i76.RegisterStore(
        authService: gh<_i5.AuthService>(),
        registerCoordinator: gh<_i77.RegisterCoordinator>(),
        authStringProvider: gh<_i48.AuthStringProvider>(),
      ));
  gh.singleton<_i64.RulesCoordinator>(
      _i78.ProdRulesCoordinator(goRouter: gh<_i63.GoRouter>()));
  gh.factory<_i79.RulesStore>(() => _i79.RulesStore(
        rulesService: gh<_i80.RulesService>(),
        rulesCoordinator: gh<_i81.RulesCoordinator>(),
      ));
  gh.singleton<_i64.SettingsCoordinator>(
      _i82.ProdSettingsCoordinator(goRouter: gh<_i63.GoRouter>()));
  gh.factory<_i83.SettingsStore>(() => _i83.SettingsStore(
        authService: gh<_i60.AuthService>(),
        settingsCoordinator: gh<_i84.SettingsCoordinator>(),
      ));
  gh.singleton<_i64.CommentCoordinator>(
      _i85.ProdCommentCoordinator(goRouter: gh<_i63.GoRouter>()));
  gh.factory<_i86.CommentReplyStore>(() => _i86.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i87.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i53.CommentReplyStringProvider>(),
        mapster: gh<_i24.Mapster>(),
      ));
  gh.factory<_i88.CommentStore>(() => _i88.CommentStore(
        commentReplyStore: gh<_i86.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i87.CommentCoordinator>(),
        commentStringProvider: gh<_i55.CommentStringProvider>(),
        mapster: gh<_i24.Mapster>(),
      ));
  gh.singleton<_i64.FeedCoordinator>(
      _i89.ProdFeedCoordinator(goRouter: gh<_i63.GoRouter>()));
  gh.factory<_i90.FeedStore>(() => _i90.FeedStore(
        feedService: gh<_i58.FeedService>(),
        feedCoordinator: gh<_i91.FeedCoordinator>(),
        feedStringProvider: gh<_i61.FeedStringProvider>(),
        mapster: gh<_i24.Mapster>(),
      ));
  gh.factory<_i92.PostCommentStore>(() => _i92.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i87.CommentCoordinator>(),
        postCommentStringProvider: gh<_i25.PostCommentStringProvider>(),
        mapster: gh<_i24.Mapster>(),
      ));
  gh.factory<_i93.PostStore>(() => _i93.PostStore(
        postCommentStore: gh<_i92.PostCommentStore>(),
        postService: gh<_i30.PostService>(),
        postCoordinator: gh<_i94.PostCoordinator>(),
        postStringProvider: gh<_i32.PostStringProvider>(),
        mapster: gh<_i24.Mapster>(),
      ));
  gh.singleton<_i95.CategoryStore>(_i95.CategoryStore(
    feedStore: gh<_i90.FeedStore>(),
    categoryService: gh<_i3.CategoryService>(),
    categoryStringProvider: gh<_i51.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$MapsterModule extends _i96.MapsterModule {}

class _$RouterModule extends _i97.RouterModule {}

class _$DioModule extends _i98.DioModule {}

class _$EnvModule extends _i99.EnvModule {}

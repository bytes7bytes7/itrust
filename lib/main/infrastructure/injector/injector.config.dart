// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:flutter/material.dart' as _i21;
import 'package:flutter/widgets.dart' as _i37;
import 'package:freezed_annotation/freezed_annotation.dart' as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i84;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i91;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i98;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i102;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i35;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i47;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i90;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i97;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i100;
import 'package:itrust/features/auth/auth.dart' as _i49;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i101;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i36;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i48;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i50;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i56;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i19;
import 'package:itrust/features/common/common.dart' as _i81;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i25;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i23;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i70;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i64;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i51;
import 'package:itrust/features/common/domain/repositories/end_user_repository.dart'
    as _i69;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i67;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i68;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i71;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i57;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i63;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i65;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i52;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i26;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i24;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i42;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i18;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i78;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i85;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i112;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i72;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i82;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i116;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i111;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i79;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i73;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i83;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i80;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i34;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i32;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i33;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i94;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i93;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i108;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i115;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i74;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i76;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i39;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i45;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i109;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i107;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i114;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i113;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i43;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i75;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i77;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i40;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i46;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i44;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i41;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i105;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i54;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i104;
import 'package:itrust/features/settings/infrastructure/providers/settings_string_provider.dart'
    as _i55;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i61;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i59;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i62;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i60;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i86;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i88;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i106;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i110;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i87;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i89;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i92;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i95;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i96;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i99;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i103;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i28;
import 'package:itrust/utils/server_settings.dart' as _i53;
import 'package:itrust/utils/utils.dart' as _i66;
import 'package:json_annotation/json_annotation.dart' as _i29;
import 'package:mapster/mapster.dart' as _i38;
import 'package:problem_details/problem_details.dart' as _i27;

import '../../../env/env_module.dart' as _i117;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i118;
import '../router/router.dart' as _i119;
import '../third_party/dio_module.dart' as _i120;

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
  gh.singleton<_i5.EndUserRepository>(
    _i18.TestEndUserRepository(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i19.FormattedDateProvider>(_i20.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i15.DateTimeProvider>()));
  gh.singleton<_i21.GlobalKey<_i21.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i22.JsonConverter<_i23.LogOutResponse, Map<String, Object?>>>(
      _i24.LogOutResponseJsonConverter());
  gh.singleton<_i22.JsonConverter<_i25.LogInResponse, Map<String, Object?>>>(
      _i26.LogInResponseJsonConverter());
  gh.singleton<_i22.JsonConverter<_i27.ProblemDetails, Map<String, Object?>>>(
      _i28.ProblemDetailsJsonConverter());
  gh.singleton<_i29.JsonConverter<_i30.RegisterResponse, Map<String, Object?>>>(
      _i31.RegisterResponseJsonConverter());
  gh.singleton<_i32.LockService>(
    _i33.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i34.LockStore>(
      () => _i34.LockStore(lockService: gh<_i32.LockService>()));
  gh.singleton<_i35.LogInStringProvider>(_i36.ProdLogInStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i38.Mapster>(mapsterModule.mapster);
  gh.singleton<_i39.PostCommentStringProvider>(
      _i40.ProdPostCommentStringProvider(
          navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i41.PostMapsterRegistrar>(
      _i41.PostMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i5.PostRepository>(_i42.ProdPostRepository());
  gh.singleton<_i43.PostService>(
    _i44.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i45.PostStringProvider>(_i46.ProdPostStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i47.RegisterStringProvider>(_i48.ProdRegisterStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i49.RulesService>(
    _i50.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i51.ServerExceptionProvider>(
    () => _i52.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i53.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i54.SettingsStringProvider>(_i55.ProdSettingsStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i56.SuffixNumberProvider>(_i57.ProdSuffixNumberProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i5.TokenService>(_i58.ProdTokenService(dio: gh<_i17.Dio>()));
  gh.singleton<_i59.UserInfoService>(_i60.TestUserService());
  gh.singleton<_i61.UserInfoStringProvider>(_i62.ProdUserInfoStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i5.AuthExceptionProvider>(
      _i63.ProdAuthExceptionProvider(gh<_i5.ServerExceptionProvider>()));
  gh.singleton<_i64.AuthProvider>(_i65.ProdAuthProvider(
    gh<_i17.Dio>(),
    gh<_i66.ServerSettings>(),
  ));
  await gh.singletonAsync<_i67.AuthService>(
    () {
      final i = _i67.AuthService(
        tokenService: gh<_i68.TokenService>(),
        authProvider: gh<_i64.AuthProvider>(),
        endUserRepository: gh<_i69.EndUserRepository>(),
        authExceptionProvider: gh<_i70.AuthExceptionProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i56.BeautifiedNumberProvider>(_i71.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i56.SuffixNumberProvider>()));
  gh.singleton<_i72.CategoryStringProvider>(_i73.ProdCategoryStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i74.CommentReplyStringProvider>(
      _i75.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i76.CommentStringProvider>(_i77.ProdCommentStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i78.CommonMapsterRegistrar>(
      _i78.CommonMapsterRegistrar(gh<_i38.Mapster>())..register());
  gh.singleton<_i79.FeedService>(_i80.ProdFeedService(
    postRepository: gh<_i81.PostRepository>(),
    endUserRepository: gh<_i81.EndUserRepository>(),
  ));
  gh.singleton<_i82.FeedStringProvider>(_i83.ProdFeedStringProvider(
      navigatorKey: gh<_i37.GlobalKey<_i37.NavigatorState>>()));
  gh.singleton<_i84.GoRouter>(routerModule.router(
    gh<_i21.GlobalKey<_i21.NavigatorState>>(),
    gh<_i85.AuthService>(),
  ));
  gh.singleton<_i86.HomeCoordinator>(
    _i87.ProdHomeCoordinator(goRouter: gh<_i84.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i88.HomeStore>(
      () => _i88.HomeStore(homeCoordinator: gh<_i86.HomeCoordinator>()));
  gh.singleton<_i85.LogInCoordinator>(
    _i89.ProdLogInCoordinator(
      goRouter: gh<_i84.GoRouter>(),
      authService: gh<_i85.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i90.LogInStore>(() => _i90.LogInStore(
        authService: gh<_i5.AuthService>(),
        logInCoordinator: gh<_i91.LogInCoordinator>(),
        logInStringProvider: gh<_i35.LogInStringProvider>(),
      ));
  gh.singleton<_i85.MenuCoordinator>(
      _i92.ProdMenuCoordinator(goRouter: gh<_i84.GoRouter>()));
  gh.singleton<_i93.MenuStore>(
      _i93.MenuStore(menuCoordinator: gh<_i94.MenuCoordinator>()));
  gh.singleton<_i85.PostCoordinator>(
      _i95.ProdPostCoordinator(goRouter: gh<_i84.GoRouter>()));
  gh.singleton<_i85.RegisterCoordinator>(
    _i96.ProdRegisterCoordinator(
      goRouter: gh<_i84.GoRouter>(),
      authService: gh<_i85.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i97.RegisterStore>(() => _i97.RegisterStore(
        authService: gh<_i5.AuthService>(),
        registerCoordinator: gh<_i98.RegisterCoordinator>(),
        registerStringProvider: gh<_i47.RegisterStringProvider>(),
      ));
  gh.singleton<_i85.RulesCoordinator>(
      _i99.ProdRulesCoordinator(goRouter: gh<_i84.GoRouter>()));
  gh.factory<_i100.RulesStore>(() => _i100.RulesStore(
        rulesService: gh<_i101.RulesService>(),
        rulesCoordinator: gh<_i102.RulesCoordinator>(),
      ));
  gh.singleton<_i85.SettingsCoordinator>(
      _i103.ProdSettingsCoordinator(goRouter: gh<_i84.GoRouter>()));
  gh.factory<_i104.SettingsStore>(() => _i104.SettingsStore(
        authService: gh<_i81.AuthService>(),
        settingsCoordinator: gh<_i105.SettingsCoordinator>(),
        settingsStringProvider: gh<_i54.SettingsStringProvider>(),
      ));
  gh.singleton<_i85.CommentCoordinator>(
      _i106.ProdCommentCoordinator(goRouter: gh<_i84.GoRouter>()));
  gh.factory<_i107.CommentReplyStore>(() => _i107.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i108.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i74.CommentReplyStringProvider>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.factory<_i109.CommentStore>(() => _i109.CommentStore(
        commentReplyStore: gh<_i107.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i108.CommentCoordinator>(),
        commentStringProvider: gh<_i76.CommentStringProvider>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i85.FeedCoordinator>(
      _i110.ProdFeedCoordinator(goRouter: gh<_i84.GoRouter>()));
  gh.factory<_i111.FeedStore>(() => _i111.FeedStore(
        feedService: gh<_i79.FeedService>(),
        feedCoordinator: gh<_i112.FeedCoordinator>(),
        feedStringProvider: gh<_i82.FeedStringProvider>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.factory<_i113.PostCommentStore>(() => _i113.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i108.CommentCoordinator>(),
        postCommentStringProvider: gh<_i39.PostCommentStringProvider>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.factory<_i114.PostStore>(() => _i114.PostStore(
        postCommentStore: gh<_i113.PostCommentStore>(),
        postService: gh<_i43.PostService>(),
        postCoordinator: gh<_i115.PostCoordinator>(),
        postStringProvider: gh<_i45.PostStringProvider>(),
        mapster: gh<_i38.Mapster>(),
      ));
  gh.singleton<_i116.CategoryStore>(_i116.CategoryStore(
    feedStore: gh<_i111.FeedStore>(),
    categoryService: gh<_i3.CategoryService>(),
    categoryStringProvider: gh<_i72.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i117.EnvModule {}

class _$MapsterModule extends _i118.MapsterModule {}

class _$RouterModule extends _i119.RouterModule {}

class _$DioModule extends _i120.DioModule {}

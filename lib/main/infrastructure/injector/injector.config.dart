// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i17;
import 'package:dio/dio.dart' as _i19;
import 'package:flutter/material.dart' as _i24;
import 'package:flutter/widgets.dart' as _i42;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i21;
import 'package:freezed_annotation/freezed_annotation.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i90;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i97;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i104;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i108;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i40;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i52;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i96;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i103;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i106;
import 'package:itrust/features/auth/auth.dart' as _i54;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i107;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i41;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i53;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i55;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i61;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i22;
import 'package:itrust/features/common/common.dart' as _i87;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i33;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i31;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i29;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i26;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i75;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i69;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i56;
import 'package:itrust/features/common/domain/repositories/end_user_repository.dart'
    as _i74;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i72;
import 'package:itrust/features/common/domain/services/device_info_service.dart'
    as _i76;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i73;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i77;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i23;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i62;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i68;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i70;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i57;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i32;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i30;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i27;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/infrastructure/services/device_info_service.dart'
    as _i18;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i63;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i84;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i91;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i118;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i78;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i88;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i122;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i117;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i85;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i79;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i89;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i86;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i39;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i37;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i38;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i100;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i99;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i114;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i121;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i80;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i82;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i44;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i50;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i115;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i113;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i120;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i119;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i48;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i81;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i83;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i45;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i51;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i49;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i46;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i111;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i59;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i110;
import 'package:itrust/features/settings/infrastructure/providers/settings_string_provider.dart'
    as _i60;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i66;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i64;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i67;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i65;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i92;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i94;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i112;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i116;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i93;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i95;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i98;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i101;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i102;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i105;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i109;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i36;
import 'package:itrust/utils/server_settings.dart' as _i58;
import 'package:itrust/utils/utils.dart' as _i71;
import 'package:json_annotation/json_annotation.dart' as _i28;
import 'package:mapster/mapster.dart' as _i43;
import 'package:problem_details/problem_details.dart' as _i35;

import '../../../env/env_module.dart' as _i123;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i124;
import '../router/router.dart' as _i125;
import '../third_party/device_info_plus_module.dart' as _i126;
import '../third_party/dio_module.dart' as _i127;
import '../third_party/secure_storage_module.dart' as _i128;

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
  final deviceInfoPlusModule = _$DeviceInfoPlusModule();
  final dioModule = _$DioModule();
  final secureStorageModule = _$SecureStorageModule();
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
  gh.singleton<_i17.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i5.DeviceInfoService>(_i18.ProdDeviceInfoService(
      deviceInfoPlugin: gh<_i17.DeviceInfoPlugin>()));
  gh.singleton<_i19.Dio>(dioModule.dio);
  gh.singleton<_i5.EndUserRepository>(
    _i20.TestEndUserRepository(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i21.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i22.FormattedDateProvider>(_i23.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i15.DateTimeProvider>()));
  gh.singleton<_i24.GlobalKey<_i24.NavigatorState>>(routerModule.rootKey);
  gh.singleton<
          _i25.JsonConverter<_i26.VerifyTokenResponse, Map<String, Object?>>>(
      _i27.VerifyTokenResponseJsonConverter());
  gh.singleton<_i28.JsonConverter<_i29.RegisterResponse, Map<String, Object?>>>(
      _i30.RegisterResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i31.LogOutResponse, Map<String, Object?>>>(
      _i32.LogOutResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i33.LogInResponse, Map<String, Object?>>>(
      _i34.LogInResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i35.ProblemDetails, Map<String, Object?>>>(
      _i36.ProblemDetailsJsonConverter());
  gh.singleton<_i37.LockService>(
    _i38.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i39.LockStore>(
      () => _i39.LockStore(lockService: gh<_i37.LockService>()));
  gh.singleton<_i40.LogInStringProvider>(_i41.ProdLogInStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i43.Mapster>(mapsterModule.mapster);
  gh.singleton<_i44.PostCommentStringProvider>(
      _i45.ProdPostCommentStringProvider(
          navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i46.PostMapsterRegistrar>(
      _i46.PostMapsterRegistrar(gh<_i43.Mapster>())..register());
  gh.singleton<_i5.PostRepository>(_i47.ProdPostRepository());
  gh.singleton<_i48.PostService>(
    _i49.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i50.PostStringProvider>(_i51.ProdPostStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i52.RegisterStringProvider>(_i53.ProdRegisterStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i54.RulesService>(
    _i55.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i56.ServerExceptionProvider>(
    () => _i57.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i58.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i59.SettingsStringProvider>(_i60.ProdSettingsStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i61.SuffixNumberProvider>(_i62.ProdSuffixNumberProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i5.TokenService>(_i63.ProdTokenService(
    dio: gh<_i19.Dio>(),
    secureStorage: gh<_i21.FlutterSecureStorage>(),
  ));
  gh.singleton<_i64.UserInfoService>(_i65.TestUserService());
  gh.singleton<_i66.UserInfoStringProvider>(_i67.ProdUserInfoStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i5.AuthExceptionProvider>(
      _i68.ProdAuthExceptionProvider(gh<_i5.ServerExceptionProvider>()));
  gh.singleton<_i69.AuthProvider>(_i70.ProdAuthProvider(
    gh<_i19.Dio>(),
    gh<_i71.ServerSettings>(),
  ));
  await gh.singletonAsync<_i72.AuthService>(
    () {
      final i = _i72.AuthService(
        authProvider: gh<_i69.AuthProvider>(),
        tokenService: gh<_i73.TokenService>(),
        endUserRepository: gh<_i74.EndUserRepository>(),
        authExceptionProvider: gh<_i75.AuthExceptionProvider>(),
        deviceInfoService: gh<_i76.DeviceInfoService>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i61.BeautifiedNumberProvider>(_i77.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i61.SuffixNumberProvider>()));
  gh.singleton<_i78.CategoryStringProvider>(_i79.ProdCategoryStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i80.CommentReplyStringProvider>(
      _i81.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i82.CommentStringProvider>(_i83.ProdCommentStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i84.CommonMapsterRegistrar>(
      _i84.CommonMapsterRegistrar(gh<_i43.Mapster>())..register());
  gh.singleton<_i85.FeedService>(_i86.ProdFeedService(
    postRepository: gh<_i87.PostRepository>(),
    endUserRepository: gh<_i87.EndUserRepository>(),
  ));
  gh.singleton<_i88.FeedStringProvider>(_i89.ProdFeedStringProvider(
      navigatorKey: gh<_i42.GlobalKey<_i42.NavigatorState>>()));
  gh.singleton<_i90.GoRouter>(routerModule.router(
    gh<_i24.GlobalKey<_i24.NavigatorState>>(),
    gh<_i91.AuthService>(),
  ));
  gh.singleton<_i92.HomeCoordinator>(
    _i93.ProdHomeCoordinator(goRouter: gh<_i90.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i94.HomeStore>(
      () => _i94.HomeStore(homeCoordinator: gh<_i92.HomeCoordinator>()));
  gh.singleton<_i91.LogInCoordinator>(
    _i95.ProdLogInCoordinator(
      goRouter: gh<_i90.GoRouter>(),
      authService: gh<_i91.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i96.LogInStore>(() => _i96.LogInStore(
        authService: gh<_i5.AuthService>(),
        logInCoordinator: gh<_i97.LogInCoordinator>(),
        logInStringProvider: gh<_i40.LogInStringProvider>(),
      ));
  gh.singleton<_i91.MenuCoordinator>(
      _i98.ProdMenuCoordinator(goRouter: gh<_i90.GoRouter>()));
  gh.singleton<_i99.MenuStore>(
      _i99.MenuStore(menuCoordinator: gh<_i100.MenuCoordinator>()));
  gh.singleton<_i91.PostCoordinator>(
      _i101.ProdPostCoordinator(goRouter: gh<_i90.GoRouter>()));
  gh.singleton<_i91.RegisterCoordinator>(
    _i102.ProdRegisterCoordinator(
      goRouter: gh<_i90.GoRouter>(),
      authService: gh<_i91.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i103.RegisterStore>(() => _i103.RegisterStore(
        authService: gh<_i5.AuthService>(),
        registerCoordinator: gh<_i104.RegisterCoordinator>(),
        registerStringProvider: gh<_i52.RegisterStringProvider>(),
      ));
  gh.singleton<_i91.RulesCoordinator>(
      _i105.ProdRulesCoordinator(goRouter: gh<_i90.GoRouter>()));
  gh.factory<_i106.RulesStore>(() => _i106.RulesStore(
        rulesService: gh<_i107.RulesService>(),
        rulesCoordinator: gh<_i108.RulesCoordinator>(),
      ));
  gh.singleton<_i91.SettingsCoordinator>(
      _i109.ProdSettingsCoordinator(goRouter: gh<_i90.GoRouter>()));
  gh.factory<_i110.SettingsStore>(() => _i110.SettingsStore(
        authService: gh<_i87.AuthService>(),
        settingsCoordinator: gh<_i111.SettingsCoordinator>(),
        settingsStringProvider: gh<_i59.SettingsStringProvider>(),
      ));
  gh.singleton<_i91.CommentCoordinator>(
      _i112.ProdCommentCoordinator(goRouter: gh<_i90.GoRouter>()));
  gh.factory<_i113.CommentReplyStore>(() => _i113.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i114.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i80.CommentReplyStringProvider>(),
        mapster: gh<_i43.Mapster>(),
      ));
  gh.factory<_i115.CommentStore>(() => _i115.CommentStore(
        commentReplyStore: gh<_i113.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i114.CommentCoordinator>(),
        commentStringProvider: gh<_i82.CommentStringProvider>(),
        mapster: gh<_i43.Mapster>(),
      ));
  gh.singleton<_i91.FeedCoordinator>(
      _i116.ProdFeedCoordinator(goRouter: gh<_i90.GoRouter>()));
  gh.factory<_i117.FeedStore>(() => _i117.FeedStore(
        feedService: gh<_i85.FeedService>(),
        feedCoordinator: gh<_i118.FeedCoordinator>(),
        feedStringProvider: gh<_i88.FeedStringProvider>(),
        mapster: gh<_i43.Mapster>(),
      ));
  gh.factory<_i119.PostCommentStore>(() => _i119.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i114.CommentCoordinator>(),
        postCommentStringProvider: gh<_i44.PostCommentStringProvider>(),
        mapster: gh<_i43.Mapster>(),
      ));
  gh.factory<_i120.PostStore>(() => _i120.PostStore(
        postCommentStore: gh<_i119.PostCommentStore>(),
        postService: gh<_i48.PostService>(),
        postCoordinator: gh<_i121.PostCoordinator>(),
        postStringProvider: gh<_i50.PostStringProvider>(),
        mapster: gh<_i43.Mapster>(),
      ));
  gh.singleton<_i122.CategoryStore>(_i122.CategoryStore(
    feedStore: gh<_i117.FeedStore>(),
    categoryService: gh<_i3.CategoryService>(),
    categoryStringProvider: gh<_i78.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i123.EnvModule {}

class _$MapsterModule extends _i124.MapsterModule {}

class _$RouterModule extends _i125.RouterModule {}

class _$DeviceInfoPlusModule extends _i126.DeviceInfoPlusModule {}

class _$DioModule extends _i127.DioModule {}

class _$SecureStorageModule extends _i128.SecureStorageModule {}

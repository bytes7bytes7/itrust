// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i19;
import 'package:dio/dio.dart' as _i21;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i46;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i23;
import 'package:freezed_annotation/freezed_annotation.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i100;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i107;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i114;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i118;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i44;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i56;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i106;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i113;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i116;
import 'package:itrust/features/auth/auth.dart' as _i58;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i117;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i45;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i57;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i59;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i13;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i12;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i9;
import 'package:itrust/features/common/application/application.dart' as _i65;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/common.dart' as _i39;
import 'package:itrust/features/common/domain/domain.dart' as _i7;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i37;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i35;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i33;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i99;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i73;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i3;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i88;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i90;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i96;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i60;
import 'package:itrust/features/common/domain/repositories/end_user_repository.dart'
    as _i97;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i98;
import 'package:itrust/features/common/domain/services/device_info_service.dart'
    as _i95;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i93;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i94;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i76;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i18;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i66;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i72;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i74;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i89;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i91;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i92;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i61;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i38;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i36;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i40;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i10;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i51;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i22;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/services/device_info_service.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i67;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i83;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i16;
import 'package:itrust/features/features.dart' as _i101;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i128;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i77;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i86;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i132;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i127;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i5;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i84;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i78;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i87;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i6;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i85;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i43;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i41;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i42;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i110;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i109;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i124;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i131;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i79;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i81;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i48;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i54;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i125;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i123;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i130;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i129;
import 'package:itrust/features/post/domain/domain.dart' as _i14;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i52;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i80;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i82;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i49;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i55;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i15;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i53;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i50;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i121;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i63;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i120;
import 'package:itrust/features/settings/infrastructure/providers/settings_string_provider.dart'
    as _i64;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i70;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i68;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i71;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i69;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i102;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i104;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i122;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i126;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i103;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i105;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i108;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i111;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i112;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i115;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i119;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i29;
import 'package:itrust/utils/server_settings.dart' as _i62;
import 'package:itrust/utils/utils.dart' as _i75;
import 'package:json_annotation/json_annotation.dart' as _i32;
import 'package:mapster/mapster.dart' as _i47;
import 'package:problem_details/problem_details.dart' as _i28;

import '../../../env/env_module.dart' as _i133;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i134;
import '../router/router.dart' as _i135;
import '../third_party/device_info_plus_module.dart' as _i136;
import '../third_party/dio_module.dart' as _i137;
import '../third_party/secure_storage_module.dart' as _i138;

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
  gh.singleton<_i3.AuthStatusProvider>(
    _i4.ProdAuthStatusProvider(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i5.CategoryService>(
    _i6.TestCategoryService(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i7.ChatListService>(
    () => _i8.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i9.ChatListStore>(
      _i9.ChatListStore(chatListService: gh<_i7.ChatListService>()));
  gh.lazySingleton<_i7.ChatRepository>(
    () => _i10.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i11.ChatService>(
    _i12.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i13.ChatStore>(
      () => _i13.ChatStore(chatService: gh<_i11.ChatService>()));
  gh.singleton<_i14.CommentService>(
    _i15.TestCommentService(),
    registerFor: {_test},
  );
  gh.factory<_i16.ConnectionStore>(() => _i16.ConnectionStore());
  gh.singleton<_i17.DateTimeProvider>(_i18.ProdDateTimeProvider());
  gh.singleton<_i19.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i7.DeviceInfoService>(_i20.ProdDeviceInfoService(
      deviceInfoPlugin: gh<_i19.DeviceInfoPlugin>()));
  gh.singleton<_i21.Dio>(dioModule.dio);
  gh.singleton<_i7.EndUserRepository>(
    _i22.TestEndUserRepository(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i23.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i24.FormattedDateProvider>(_i25.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i17.DateTimeProvider>()));
  gh.singleton<_i26.GlobalKey<_i26.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i27.JsonConverter<_i28.ProblemDetails, Map<String, Object?>>>(
      _i29.ProblemDetailsJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i30.VerifyTokenResponse, Map<String, Object?>>>(
      _i31.VerifyTokenResponseJsonConverter());
  gh.singleton<_i32.JsonConverter<_i33.RegisterResponse, Map<String, Object?>>>(
      _i34.RegisterResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i35.LogOutResponse, Map<String, Object?>>>(
      _i36.LogOutResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i37.LogInResponse, Map<String, Object?>>>(
      _i38.LogInResponseJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i39.RefreshTokenResponse, Map<String, Object?>>>(
      _i40.RefreshTokenResponseJsonConverter());
  gh.singleton<_i41.LockService>(
    _i42.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i43.LockStore>(
      () => _i43.LockStore(lockService: gh<_i41.LockService>()));
  gh.singleton<_i44.LogInStringProvider>(_i45.ProdLogInStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i47.Mapster>(mapsterModule.mapster);
  gh.singleton<_i48.PostCommentStringProvider>(
      _i49.ProdPostCommentStringProvider(
          navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i50.PostMapsterRegistrar>(
      _i50.PostMapsterRegistrar(gh<_i47.Mapster>())..register());
  gh.singleton<_i7.PostRepository>(_i51.ProdPostRepository());
  gh.singleton<_i52.PostService>(
    _i53.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i54.PostStringProvider>(_i55.ProdPostStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i56.RegisterStringProvider>(_i57.ProdRegisterStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i58.RulesService>(
    _i59.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i60.ServerExceptionProvider>(
    () => _i61.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i62.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i63.SettingsStringProvider>(_i64.ProdSettingsStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i65.SuffixNumberProvider>(_i66.ProdSuffixNumberProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i7.TokenService>(_i67.ProdTokenService(
    dio: gh<_i21.Dio>(),
    secureStorage: gh<_i23.FlutterSecureStorage>(),
  ));
  gh.singleton<_i68.UserInfoService>(_i69.TestUserService());
  gh.singleton<_i70.UserInfoStringProvider>(_i71.ProdUserInfoStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i7.AuthExceptionProvider>(
      _i72.ProdAuthExceptionProvider(gh<_i7.ServerExceptionProvider>()));
  gh.singleton<_i73.AuthProvider>(_i74.ProdAuthProvider(
    gh<_i21.Dio>(),
    gh<_i75.ServerSettings>(),
  ));
  gh.singleton<_i65.BeautifiedNumberProvider>(_i76.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i65.SuffixNumberProvider>()));
  gh.singleton<_i77.CategoryStringProvider>(_i78.ProdCategoryStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i79.CommentReplyStringProvider>(
      _i80.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i81.CommentStringProvider>(_i82.ProdCommentStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i83.CommonMapsterRegistrar>(
      _i83.CommonMapsterRegistrar(gh<_i47.Mapster>())..register());
  gh.singleton<_i84.FeedService>(_i85.ProdFeedService(
    postRepository: gh<_i39.PostRepository>(),
    endUserRepository: gh<_i39.EndUserRepository>(),
  ));
  gh.singleton<_i86.FeedStringProvider>(_i87.ProdFeedStringProvider(
      navigatorKey: gh<_i46.GlobalKey<_i46.NavigatorState>>()));
  gh.singleton<_i88.KeepFreshTokenExceptionProvider>(
      _i89.ProdKeepFreshTokenExceptionProvider(
          gh<_i60.ServerExceptionProvider>()));
  gh.singleton<_i90.KeepFreshTokenProvider>(_i91.ProdKeepFreshTokenProvider(
    gh<_i21.Dio>(),
    gh<_i62.ServerSettings>(),
  ));
  gh.singleton<_i7.ServerAvailabilityProvider>(
      _i92.ProdServerAvailabilityProvider(gh<_i62.ServerSettings>()));
  gh.singleton<_i93.KeepFreshTokenService>(_i93.KeepFreshTokenService(
    tokenService: gh<_i94.TokenService>(),
    keepFreshTokenProvider: gh<_i90.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i3.AuthStatusProvider>(),
    deviceInfoService: gh<_i95.DeviceInfoService>(),
    keepFreshTokenExceptionProvider: gh<_i88.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i96.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i97.EndUserRepository>(),
  ));
  await gh.singletonAsync<_i98.AuthService>(
    () {
      final i = _i98.AuthService(
        serverAvailabilityProvider: gh<_i96.ServerAvailabilityProvider>(),
        authProvider: gh<_i73.AuthProvider>(),
        tokenService: gh<_i94.TokenService>(),
        endUserRepository: gh<_i97.EndUserRepository>(),
        authExceptionProvider: gh<_i99.AuthExceptionProvider>(),
        deviceInfoService: gh<_i95.DeviceInfoService>(),
        keepFreshTokenService: gh<_i93.KeepFreshTokenService>(),
        authStatusProvider: gh<_i3.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i100.GoRouter>(routerModule.router(
    gh<_i26.GlobalKey<_i26.NavigatorState>>(),
    gh<_i101.AuthService>(),
  ));
  gh.singleton<_i102.HomeCoordinator>(
    _i103.ProdHomeCoordinator(goRouter: gh<_i100.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i104.HomeStore>(
      () => _i104.HomeStore(homeCoordinator: gh<_i102.HomeCoordinator>()));
  gh.singleton<_i101.LogInCoordinator>(
    _i105.ProdLogInCoordinator(
      goRouter: gh<_i100.GoRouter>(),
      authStatusProvider: gh<_i101.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i106.LogInStore>(() => _i106.LogInStore(
        authService: gh<_i7.AuthService>(),
        logInCoordinator: gh<_i107.LogInCoordinator>(),
        logInStringProvider: gh<_i44.LogInStringProvider>(),
      ));
  gh.singleton<_i101.MenuCoordinator>(
      _i108.ProdMenuCoordinator(goRouter: gh<_i100.GoRouter>()));
  gh.singleton<_i109.MenuStore>(
      _i109.MenuStore(menuCoordinator: gh<_i110.MenuCoordinator>()));
  gh.singleton<_i101.PostCoordinator>(
      _i111.ProdPostCoordinator(goRouter: gh<_i100.GoRouter>()));
  gh.singleton<_i101.RegisterCoordinator>(
    _i112.ProdRegisterCoordinator(
      goRouter: gh<_i100.GoRouter>(),
      authStatusProvider: gh<_i101.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i113.RegisterStore>(() => _i113.RegisterStore(
        authService: gh<_i7.AuthService>(),
        registerCoordinator: gh<_i114.RegisterCoordinator>(),
        registerStringProvider: gh<_i56.RegisterStringProvider>(),
      ));
  gh.singleton<_i101.RulesCoordinator>(
      _i115.ProdRulesCoordinator(goRouter: gh<_i100.GoRouter>()));
  gh.factory<_i116.RulesStore>(() => _i116.RulesStore(
        rulesService: gh<_i117.RulesService>(),
        rulesCoordinator: gh<_i118.RulesCoordinator>(),
      ));
  gh.singleton<_i101.SettingsCoordinator>(
      _i119.ProdSettingsCoordinator(goRouter: gh<_i100.GoRouter>()));
  gh.factory<_i120.SettingsStore>(() => _i120.SettingsStore(
        authService: gh<_i39.AuthService>(),
        settingsCoordinator: gh<_i121.SettingsCoordinator>(),
        settingsStringProvider: gh<_i63.SettingsStringProvider>(),
      ));
  gh.singleton<_i101.CommentCoordinator>(
      _i122.ProdCommentCoordinator(goRouter: gh<_i100.GoRouter>()));
  gh.factory<_i123.CommentReplyStore>(() => _i123.CommentReplyStore(
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i124.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i79.CommentReplyStringProvider>(),
        mapster: gh<_i47.Mapster>(),
      ));
  gh.factory<_i125.CommentStore>(() => _i125.CommentStore(
        commentReplyStore: gh<_i123.CommentReplyStore>(),
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i124.CommentCoordinator>(),
        commentStringProvider: gh<_i81.CommentStringProvider>(),
        mapster: gh<_i47.Mapster>(),
      ));
  gh.singleton<_i101.FeedCoordinator>(
      _i126.ProdFeedCoordinator(goRouter: gh<_i100.GoRouter>()));
  gh.factory<_i127.FeedStore>(() => _i127.FeedStore(
        feedService: gh<_i84.FeedService>(),
        feedCoordinator: gh<_i128.FeedCoordinator>(),
        feedStringProvider: gh<_i86.FeedStringProvider>(),
        mapster: gh<_i47.Mapster>(),
      ));
  gh.factory<_i129.PostCommentStore>(() => _i129.PostCommentStore(
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i124.CommentCoordinator>(),
        postCommentStringProvider: gh<_i48.PostCommentStringProvider>(),
        mapster: gh<_i47.Mapster>(),
      ));
  gh.factory<_i130.PostStore>(() => _i130.PostStore(
        postCommentStore: gh<_i129.PostCommentStore>(),
        postService: gh<_i52.PostService>(),
        postCoordinator: gh<_i131.PostCoordinator>(),
        postStringProvider: gh<_i54.PostStringProvider>(),
        mapster: gh<_i47.Mapster>(),
      ));
  gh.singleton<_i132.CategoryStore>(_i132.CategoryStore(
    feedStore: gh<_i127.FeedStore>(),
    categoryService: gh<_i5.CategoryService>(),
    categoryStringProvider: gh<_i77.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i133.EnvModule {}

class _$MapsterModule extends _i134.MapsterModule {}

class _$RouterModule extends _i135.RouterModule {}

class _$DeviceInfoPlusModule extends _i136.DeviceInfoPlusModule {}

class _$DioModule extends _i137.DioModule {}

class _$SecureStorageModule extends _i138.SecureStorageModule {}

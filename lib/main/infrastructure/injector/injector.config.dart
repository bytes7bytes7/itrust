// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i19;
import 'package:dio/dio.dart' as _i21;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i50;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i23;
import 'package:freezed_annotation/freezed_annotation.dart' as _i30;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i110;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i117;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i124;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i128;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i48;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i60;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i116;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i123;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i126;
import 'package:itrust/features/auth/auth.dart' as _i62;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i127;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i49;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i61;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i63;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i13;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i12;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i9;
import 'package:itrust/features/common/application/application.dart' as _i70;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/common.dart' as _i39;
import 'package:itrust/features/common/domain/domain.dart' as _i7;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i37;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i33;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i35;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i28;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i43;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i109;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i82;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i3;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i97;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i99;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i105;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i64;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i77;
import 'package:itrust/features/common/domain/repositories/end_user_repository.dart'
    as _i106;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i108;
import 'package:itrust/features/common/domain/services/device_info_service.dart'
    as _i104;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i102;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i103;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i85;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i18;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i71;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i81;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i83;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i98;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i100;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i101;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i65;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i78;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i38;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i36;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i40;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i44;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i10;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i55;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i22;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/services/device_info_service.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i72;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i92;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i16;
import 'package:itrust/features/features.dart' as _i111;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i145;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i86;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i95;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i149;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i144;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i5;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i93;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i87;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i96;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i6;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i94;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i47;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i45;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i46;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i120;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i119;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i141;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i148;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i88;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i90;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i52;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i58;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i142;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i140;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i147;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i146;
import 'package:itrust/features/post/domain/domain.dart' as _i14;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i56;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i89;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i91;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i53;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i59;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i15;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i57;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i54;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i134;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i138;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i131;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i68;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i133;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i136;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i130;
import 'package:itrust/features/settings/domain/domain.dart' as _i137;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i31;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i79;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i107;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i69;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i80;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i32;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i67;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i75;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i73;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i76;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i74;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i112;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i114;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i132;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i135;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i139;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i143;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i113;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i115;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i118;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i121;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i122;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i125;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i129;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i42;
import 'package:itrust/utils/server_settings.dart' as _i66;
import 'package:itrust/utils/utils.dart' as _i84;
import 'package:json_annotation/json_annotation.dart' as _i27;
import 'package:mapster/mapster.dart' as _i51;
import 'package:problem_details/problem_details.dart' as _i41;

import '../../../env/env_module.dart' as _i150;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i151;
import '../router/router.dart' as _i152;
import '../third_party/device_info_plus_module.dart' as _i153;
import '../third_party/dio_module.dart' as _i154;
import '../third_party/secure_storage_module.dart' as _i155;

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
  gh.singleton<_i27.JsonConverter<_i28.RegisterResponse, Map<String, Object?>>>(
      _i29.RegisterResponseJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i31.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i32.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i33.LogInResponse, Map<String, Object?>>>(
      _i34.LogInResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i35.LogOutResponse, Map<String, Object?>>>(
      _i36.LogOutResponseJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i37.GetUserByIDResponse, Map<String, Object?>>>(
      _i38.GetUserByIDResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i39.RefreshTokenResponse, Map<String, Object?>>>(
      _i40.RefreshTokenResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i41.ProblemDetails, Map<String, Object?>>>(
      _i42.ProblemDetailsJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i43.VerifyTokenResponse, Map<String, Object?>>>(
      _i44.VerifyTokenResponseJsonConverter());
  gh.singleton<_i45.LockService>(
    _i46.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i47.LockStore>(
      () => _i47.LockStore(lockService: gh<_i45.LockService>()));
  gh.singleton<_i48.LogInStringProvider>(_i49.ProdLogInStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i51.Mapster>(mapsterModule.mapster);
  gh.singleton<_i52.PostCommentStringProvider>(
      _i53.ProdPostCommentStringProvider(
          navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i54.PostMapsterRegistrar>(
      _i54.PostMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i7.PostRepository>(_i55.ProdPostRepository());
  gh.singleton<_i56.PostService>(
    _i57.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i58.PostStringProvider>(_i59.ProdPostStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i60.RegisterStringProvider>(_i61.ProdRegisterStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i62.RulesService>(
    _i63.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i64.ServerExceptionProvider>(
    () => _i65.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i66.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i67.SettingsMapsterRegistrar>(
      _i67.SettingsMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i68.SettingsStringProvider>(_i69.ProdSettingsStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i70.SuffixNumberProvider>(_i71.ProdSuffixNumberProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i7.TokenService>(_i72.ProdTokenService(
    dio: gh<_i21.Dio>(),
    secureStorage: gh<_i23.FlutterSecureStorage>(),
  ));
  gh.singleton<_i73.UserInfoService>(_i74.TestUserService());
  gh.singleton<_i75.UserInfoStringProvider>(_i76.ProdUserInfoStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i77.UserProvider>(_i78.ProdUserProvider(
    gh<_i21.Dio>(),
    gh<_i66.ServerSettings>(),
  ));
  gh.singleton<_i79.AccountProvider>(_i80.ProdAccountProvider(
    gh<_i21.Dio>(),
    gh<_i66.ServerSettings>(),
  ));
  gh.singleton<_i7.AuthExceptionProvider>(
      _i81.ProdAuthExceptionProvider(gh<_i7.ServerExceptionProvider>()));
  gh.singleton<_i82.AuthProvider>(_i83.ProdAuthProvider(
    gh<_i21.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i70.BeautifiedNumberProvider>(_i85.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i70.SuffixNumberProvider>()));
  gh.singleton<_i86.CategoryStringProvider>(_i87.ProdCategoryStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i88.CommentReplyStringProvider>(
      _i89.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i90.CommentStringProvider>(_i91.ProdCommentStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i92.CommonMapsterRegistrar>(
      _i92.CommonMapsterRegistrar(gh<_i51.Mapster>())..register());
  gh.singleton<_i93.FeedService>(_i94.ProdFeedService(
    postRepository: gh<_i39.PostRepository>(),
    endUserRepository: gh<_i39.EndUserRepository>(),
  ));
  gh.singleton<_i95.FeedStringProvider>(_i96.ProdFeedStringProvider(
      navigatorKey: gh<_i50.GlobalKey<_i50.NavigatorState>>()));
  gh.singleton<_i97.KeepFreshTokenExceptionProvider>(
      _i98.ProdKeepFreshTokenExceptionProvider(
          gh<_i64.ServerExceptionProvider>()));
  gh.singleton<_i99.KeepFreshTokenProvider>(_i100.ProdKeepFreshTokenProvider(
    gh<_i21.Dio>(),
    gh<_i66.ServerSettings>(),
  ));
  gh.singleton<_i7.ServerAvailabilityProvider>(
      _i101.ProdServerAvailabilityProvider(gh<_i66.ServerSettings>()));
  gh.singleton<_i102.KeepFreshTokenService>(_i102.KeepFreshTokenService(
    tokenService: gh<_i103.TokenService>(),
    keepFreshTokenProvider: gh<_i99.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i3.AuthStatusProvider>(),
    deviceInfoService: gh<_i104.DeviceInfoService>(),
    keepFreshTokenExceptionProvider: gh<_i97.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i105.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i106.EndUserRepository>(),
  ));
  gh.singleton<_i107.AccountService>(
    _i107.AccountService(
      authStatusProvider: gh<_i7.AuthStatusProvider>(),
      userProvider: gh<_i7.UserProvider>(),
      accountProvider: gh<_i79.AccountProvider>(),
      keepFreshTokenService: gh<_i7.KeepFreshTokenService>(),
      endUserRepository: gh<_i7.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i108.AuthService>(
    () {
      final i = _i108.AuthService(
        serverAvailabilityProvider: gh<_i105.ServerAvailabilityProvider>(),
        authProvider: gh<_i82.AuthProvider>(),
        tokenService: gh<_i103.TokenService>(),
        endUserRepository: gh<_i106.EndUserRepository>(),
        authExceptionProvider: gh<_i109.AuthExceptionProvider>(),
        deviceInfoService: gh<_i104.DeviceInfoService>(),
        keepFreshTokenService: gh<_i102.KeepFreshTokenService>(),
        authStatusProvider: gh<_i3.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i110.GoRouter>(routerModule.router(
    gh<_i26.GlobalKey<_i26.NavigatorState>>(),
    gh<_i111.AuthService>(),
  ));
  gh.singleton<_i112.HomeCoordinator>(
    _i113.ProdHomeCoordinator(goRouter: gh<_i110.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i114.HomeStore>(
      () => _i114.HomeStore(homeCoordinator: gh<_i112.HomeCoordinator>()));
  gh.singleton<_i111.LogInCoordinator>(
    _i115.ProdLogInCoordinator(
      goRouter: gh<_i110.GoRouter>(),
      authStatusProvider: gh<_i111.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i116.LogInStore>(() => _i116.LogInStore(
        authService: gh<_i7.AuthService>(),
        logInCoordinator: gh<_i117.LogInCoordinator>(),
        logInStringProvider: gh<_i48.LogInStringProvider>(),
      ));
  gh.singleton<_i111.MenuCoordinator>(
      _i118.ProdMenuCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.singleton<_i119.MenuStore>(
      _i119.MenuStore(menuCoordinator: gh<_i120.MenuCoordinator>()));
  gh.singleton<_i111.PostCoordinator>(
      _i121.ProdPostCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.singleton<_i111.RegisterCoordinator>(
    _i122.ProdRegisterCoordinator(
      goRouter: gh<_i110.GoRouter>(),
      authStatusProvider: gh<_i111.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i123.RegisterStore>(() => _i123.RegisterStore(
        authService: gh<_i7.AuthService>(),
        registerCoordinator: gh<_i124.RegisterCoordinator>(),
        registerStringProvider: gh<_i60.RegisterStringProvider>(),
      ));
  gh.singleton<_i111.RulesCoordinator>(
      _i125.ProdRulesCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.factory<_i126.RulesStore>(() => _i126.RulesStore(
        rulesService: gh<_i127.RulesService>(),
        rulesCoordinator: gh<_i128.RulesCoordinator>(),
      ));
  gh.singleton<_i111.SettingsCoordinator>(
      _i129.ProdSettingsCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.singleton<_i130.SettingsStore>(_i130.SettingsStore(
    authService: gh<_i39.AuthService>(),
    settingsCoordinator: gh<_i131.SettingsCoordinator>(),
    settingsStringProvider: gh<_i68.SettingsStringProvider>(),
    accountService: gh<_i107.AccountService>(),
    mapster: gh<_i51.Mapster>(),
  ));
  gh.singleton<_i111.AccountSettingsCoordinator>(
      _i132.ProdAccountSettingsCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.factory<_i133.AccountSettingsStore>(() => _i133.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i134.AccountSettingsCoordinator>()));
  gh.singleton<_i111.ChangePersonalInfoCoordinator>(
      _i135.ProdChangePersonalInfoCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.factory<_i136.ChangePersonalInfoStore>(() => _i136.ChangePersonalInfoStore(
        accountService: gh<_i137.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i138.ChangePersonalInfoCoordinator>(),
      ));
  gh.singleton<_i111.CommentCoordinator>(
      _i139.ProdCommentCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.factory<_i140.CommentReplyStore>(() => _i140.CommentReplyStore(
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i141.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i88.CommentReplyStringProvider>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.factory<_i142.CommentStore>(() => _i142.CommentStore(
        commentReplyStore: gh<_i140.CommentReplyStore>(),
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i141.CommentCoordinator>(),
        commentStringProvider: gh<_i90.CommentStringProvider>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i111.FeedCoordinator>(
      _i143.ProdFeedCoordinator(goRouter: gh<_i110.GoRouter>()));
  gh.factory<_i144.FeedStore>(() => _i144.FeedStore(
        feedService: gh<_i93.FeedService>(),
        feedCoordinator: gh<_i145.FeedCoordinator>(),
        feedStringProvider: gh<_i95.FeedStringProvider>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.factory<_i146.PostCommentStore>(() => _i146.PostCommentStore(
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i141.CommentCoordinator>(),
        postCommentStringProvider: gh<_i52.PostCommentStringProvider>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.factory<_i147.PostStore>(() => _i147.PostStore(
        postCommentStore: gh<_i146.PostCommentStore>(),
        postService: gh<_i56.PostService>(),
        postCoordinator: gh<_i148.PostCoordinator>(),
        postStringProvider: gh<_i58.PostStringProvider>(),
        mapster: gh<_i51.Mapster>(),
      ));
  gh.singleton<_i149.CategoryStore>(_i149.CategoryStore(
    feedStore: gh<_i144.FeedStore>(),
    categoryService: gh<_i5.CategoryService>(),
    categoryStringProvider: gh<_i86.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i150.EnvModule {}

class _$MapsterModule extends _i151.MapsterModule {}

class _$RouterModule extends _i152.RouterModule {}

class _$DeviceInfoPlusModule extends _i153.DeviceInfoPlusModule {}

class _$DioModule extends _i154.DioModule {}

class _$SecureStorageModule extends _i155.SecureStorageModule {}

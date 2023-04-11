// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i19;
import 'package:dio/dio.dart' as _i21;
import 'package:flutter/material.dart' as _i25;
import 'package:flutter/widgets.dart' as _i51;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i22;
import 'package:freezed_annotation/freezed_annotation.dart' as _i26;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i113;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i120;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i127;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i131;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i49;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i62;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i119;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i126;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i129;
import 'package:itrust/features/auth/auth.dart' as _i64;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i130;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i50;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i63;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i65;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i13;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i12;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i10;
import 'package:itrust/features/common/application/application.dart' as _i72;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i23;
import 'package:itrust/features/common/common.dart' as _i36;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i44;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i42;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i38;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i27;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i112;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i85;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i100;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i102;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i108;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i66;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i80;
import 'package:itrust/features/common/domain/repositories/end_user_repository.dart'
    as _i109;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i111;
import 'package:itrust/features/common/domain/services/device_info_service.dart'
    as _i107;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i105;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i106;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i88;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i18;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i73;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i84;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i86;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i101;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i103;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i104;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i67;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i81;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i37;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i28;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i9;
import 'package:itrust/features/common/infrastructure/services/device_info_service.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i75;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i97;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i16;
import 'package:itrust/features/features.dart' as _i114;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i152;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i89;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i98;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i156;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i150;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i6;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i151;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i90;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i99;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i7;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i48;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i46;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i47;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i123;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i122;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i144;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i155;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i93;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i95;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i53;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i58;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i145;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i143;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i154;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i153;
import 'package:itrust/features/post/domain/domain.dart' as _i14;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i56;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i94;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i96;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i54;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i59;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i15;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i57;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i55;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i137;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i141;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i146;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i134;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i91;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i70;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i136;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i139;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i148;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i133;
import 'package:itrust/features/settings/domain/domain.dart' as _i140;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i34;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i32;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i82;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i110;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i92;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i71;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i83;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i35;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i33;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i69;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i78;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i76;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i79;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i77;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i115;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i117;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i135;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i138;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i142;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i147;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i149;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i116;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i118;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i121;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i124;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i125;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i128;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i132;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i41;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i74;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i60;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i61;
import 'package:itrust/utils/server_settings.dart' as _i68;
import 'package:itrust/utils/utils.dart' as _i87;
import 'package:json_annotation/json_annotation.dart' as _i29;
import 'package:mapster/mapster.dart' as _i52;
import 'package:problem_details/problem_details.dart' as _i40;

import '../../../env/env_module.dart' as _i157;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i158;
import '../router/router.dart' as _i159;
import '../third_party/device_info_plus_module.dart' as _i160;
import '../third_party/dio_module.dart' as _i161;
import '../third_party/secure_storage_module.dart' as _i162;

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
  await gh.singletonAsync<_i3.HiveModule>(
    () {
      final i = _i3.HiveModule();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i4.AuthStatusProvider>(
    _i5.ProdAuthStatusProvider(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i6.CategoryService>(
    _i7.TestCategoryService(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i8.ChatListService>(
    () => _i9.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i10.ChatListStore>(
      _i10.ChatListStore(chatListService: gh<_i8.ChatListService>()));
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
  gh.singleton<_i8.DeviceInfoService>(_i20.ProdDeviceInfoService(
      deviceInfoPlugin: gh<_i19.DeviceInfoPlugin>()));
  gh.singleton<_i21.Dio>(dioModule.dio);
  gh.singleton<_i22.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i23.FormattedDateProvider>(_i24.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i17.DateTimeProvider>()));
  gh.singleton<_i25.GlobalKey<_i25.NavigatorState>>(routerModule.rootKey);
  gh.singleton<
          _i26.JsonConverter<_i27.VerifyTokenResponse, Map<String, Object?>>>(
      _i28.VerifyTokenResponseJsonConverter());
  gh.singleton<_i29.JsonConverter<_i30.RegisterResponse, Map<String, Object?>>>(
      _i31.RegisterResponseJsonConverter());
  gh.singleton<
          _i26.JsonConverter<_i32.GetDevicesResponse, Map<String, Object?>>>(
      _i33.GetDevicesResponseJsonConverter());
  gh.singleton<
          _i26.JsonConverter<_i34.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i35.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<
          _i29.JsonConverter<_i36.RefreshTokenResponse, Map<String, Object?>>>(
      _i37.RefreshTokenResponseJsonConverter());
  gh.singleton<_i26.JsonConverter<_i38.LogOutResponse, Map<String, Object?>>>(
      _i39.LogOutResponseJsonConverter());
  gh.singleton<_i26.JsonConverter<_i40.ProblemDetails, Map<String, Object?>>>(
      _i41.ProblemDetailsJsonConverter());
  gh.singleton<_i26.JsonConverter<_i42.LogInResponse, Map<String, Object?>>>(
      _i43.LogInResponseJsonConverter());
  gh.singleton<
          _i26.JsonConverter<_i44.GetUserByIDResponse, Map<String, Object?>>>(
      _i45.GetUserByIDResponseJsonConverter());
  gh.singleton<_i46.LockService>(
    _i47.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i48.LockStore>(
      () => _i48.LockStore(lockService: gh<_i46.LockService>()));
  gh.singleton<_i49.LogInStringProvider>(_i50.ProdLogInStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i52.Mapster>(mapsterModule.mapster);
  gh.singleton<_i53.PostCommentStringProvider>(
      _i54.ProdPostCommentStringProvider(
          navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i55.PostMapsterRegistrar>(
      _i55.PostMapsterRegistrar(gh<_i52.Mapster>())..register());
  gh.singleton<_i56.PostService>(
    _i57.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i58.PostStringProvider>(_i59.ProdPostStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  await gh.singletonAsync<_i60.ProdEndUserRepository>(
    () {
      final i = _i60.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i61.ProdPostRepository>(_i61.ProdPostRepository());
  gh.singleton<_i62.RegisterStringProvider>(_i63.ProdRegisterStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i64.RulesService>(
    _i65.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i66.ServerExceptionProvider>(
    () => _i67.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i68.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i69.SettingsMapsterRegistrar>(
      _i69.SettingsMapsterRegistrar(gh<_i52.Mapster>())..register());
  gh.singleton<_i70.SettingsStringProvider>(_i71.ProdSettingsStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i72.SuffixNumberProvider>(_i73.ProdSuffixNumberProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.lazySingleton<_i74.TestChatRepository>(
    () => _i74.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.TokenService>(_i75.ProdTokenService(
    dio: gh<_i21.Dio>(),
    secureStorage: gh<_i22.FlutterSecureStorage>(),
  ));
  gh.singleton<_i76.UserInfoService>(_i77.TestUserService());
  gh.singleton<_i78.UserInfoStringProvider>(_i79.ProdUserInfoStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i80.UserProvider>(_i81.ProdUserProvider(
    gh<_i21.Dio>(),
    gh<_i68.ServerSettings>(),
  ));
  gh.singleton<_i82.AccountProvider>(_i83.ProdAccountProvider(
    gh<_i21.Dio>(),
    gh<_i68.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i84.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i85.AuthProvider>(_i86.ProdAuthProvider(
    gh<_i21.Dio>(),
    gh<_i87.ServerSettings>(),
  ));
  gh.singleton<_i72.BeautifiedNumberProvider>(_i88.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i72.SuffixNumberProvider>()));
  gh.singleton<_i89.CategoryStringProvider>(_i90.ProdCategoryStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i91.ChangePersonalInfoStringProvider>(
      _i92.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i93.CommentReplyStringProvider>(
      _i94.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i95.CommentStringProvider>(_i96.ProdCommentStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i97.CommonMapsterRegistrar>(
      _i97.CommonMapsterRegistrar(gh<_i52.Mapster>())..register());
  gh.singleton<_i98.FeedStringProvider>(_i99.ProdFeedStringProvider(
      navigatorKey: gh<_i51.GlobalKey<_i51.NavigatorState>>()));
  gh.singleton<_i100.KeepFreshTokenExceptionProvider>(
      _i101.ProdKeepFreshTokenExceptionProvider(
          gh<_i66.ServerExceptionProvider>()));
  gh.singleton<_i102.KeepFreshTokenProvider>(_i103.ProdKeepFreshTokenProvider(
    gh<_i21.Dio>(),
    gh<_i68.ServerSettings>(),
  ));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i104.ProdServerAvailabilityProvider(gh<_i68.ServerSettings>()));
  gh.singleton<_i105.KeepFreshTokenService>(_i105.KeepFreshTokenService(
    tokenService: gh<_i106.TokenService>(),
    keepFreshTokenProvider: gh<_i102.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoService: gh<_i107.DeviceInfoService>(),
    keepFreshTokenExceptionProvider:
        gh<_i100.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i108.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i109.EndUserRepository>(),
  ));
  gh.singleton<_i110.AccountService>(
    _i110.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i82.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i8.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i111.AuthService>(
    () {
      final i = _i111.AuthService(
        serverAvailabilityProvider: gh<_i108.ServerAvailabilityProvider>(),
        authProvider: gh<_i85.AuthProvider>(),
        tokenService: gh<_i106.TokenService>(),
        endUserRepository: gh<_i109.EndUserRepository>(),
        authExceptionProvider: gh<_i112.AuthExceptionProvider>(),
        deviceInfoService: gh<_i107.DeviceInfoService>(),
        keepFreshTokenService: gh<_i105.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i113.GoRouter>(routerModule.router(
    gh<_i25.GlobalKey<_i25.NavigatorState>>(),
    gh<_i114.AuthService>(),
  ));
  gh.singleton<_i115.HomeCoordinator>(
    _i116.ProdHomeCoordinator(goRouter: gh<_i113.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i117.HomeStore>(
      () => _i117.HomeStore(homeCoordinator: gh<_i115.HomeCoordinator>()));
  gh.singleton<_i114.LogInCoordinator>(
    _i118.ProdLogInCoordinator(
      goRouter: gh<_i113.GoRouter>(),
      authStatusProvider: gh<_i114.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i119.LogInStore>(() => _i119.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i120.LogInCoordinator>(),
        logInStringProvider: gh<_i49.LogInStringProvider>(),
      ));
  gh.singleton<_i114.MenuCoordinator>(
      _i121.ProdMenuCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.singleton<_i122.MenuStore>(
      _i122.MenuStore(menuCoordinator: gh<_i123.MenuCoordinator>()));
  gh.singleton<_i114.PostCoordinator>(
      _i124.ProdPostCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.singleton<_i114.RegisterCoordinator>(
    _i125.ProdRegisterCoordinator(
      goRouter: gh<_i113.GoRouter>(),
      authStatusProvider: gh<_i114.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i126.RegisterStore>(() => _i126.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i127.RegisterCoordinator>(),
        registerStringProvider: gh<_i62.RegisterStringProvider>(),
      ));
  gh.singleton<_i114.RulesCoordinator>(
      _i128.ProdRulesCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.factory<_i129.RulesStore>(() => _i129.RulesStore(
        rulesService: gh<_i130.RulesService>(),
        rulesCoordinator: gh<_i131.RulesCoordinator>(),
      ));
  gh.singleton<_i114.SettingsCoordinator>(
      _i132.ProdSettingsCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.singleton<_i133.SettingsStore>(_i133.SettingsStore(
    authService: gh<_i36.AuthService>(),
    settingsCoordinator: gh<_i134.SettingsCoordinator>(),
    settingsStringProvider: gh<_i70.SettingsStringProvider>(),
    accountService: gh<_i110.AccountService>(),
    mapster: gh<_i52.Mapster>(),
  ));
  gh.singleton<_i114.AccountSettingsCoordinator>(
      _i135.ProdAccountSettingsCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.factory<_i136.AccountSettingsStore>(() => _i136.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i137.AccountSettingsCoordinator>()));
  gh.singleton<_i114.ChangePersonalInfoCoordinator>(
      _i138.ProdChangePersonalInfoCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.factory<_i139.ChangePersonalInfoStore>(() => _i139.ChangePersonalInfoStore(
        accountService: gh<_i140.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i141.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i91.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i114.CommentCoordinator>(
      _i142.ProdCommentCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.factory<_i143.CommentReplyStore>(() => _i143.CommentReplyStore(
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i144.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i93.CommentReplyStringProvider>(),
        mapster: gh<_i52.Mapster>(),
      ));
  gh.factory<_i145.CommentStore>(() => _i145.CommentStore(
        commentReplyStore: gh<_i143.CommentReplyStore>(),
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i144.CommentCoordinator>(),
        commentStringProvider: gh<_i95.CommentStringProvider>(),
        mapster: gh<_i52.Mapster>(),
      ));
  gh.singleton<_i146.DevicesCoordinator>(
      _i147.ProdDevicesCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.singleton<_i148.DevicesStore>(_i148.DevicesStore(
    devicesCoordinator: gh<_i146.DevicesCoordinator>(),
    accountService: gh<_i110.AccountService>(),
    mapster: gh<_i52.Mapster>(),
  ));
  gh.singleton<_i114.FeedCoordinator>(
      _i149.ProdFeedCoordinator(goRouter: gh<_i113.GoRouter>()));
  gh.factory<_i150.FeedStore>(() => _i150.FeedStore(
        feedService: gh<_i151.FeedService>(),
        feedCoordinator: gh<_i152.FeedCoordinator>(),
        feedStringProvider: gh<_i98.FeedStringProvider>(),
        mapster: gh<_i52.Mapster>(),
      ));
  gh.factory<_i153.PostCommentStore>(() => _i153.PostCommentStore(
        commentService: gh<_i14.CommentService>(),
        commentCoordinator: gh<_i144.CommentCoordinator>(),
        postCommentStringProvider: gh<_i53.PostCommentStringProvider>(),
        mapster: gh<_i52.Mapster>(),
      ));
  gh.factory<_i154.PostStore>(() => _i154.PostStore(
        postCommentStore: gh<_i153.PostCommentStore>(),
        postService: gh<_i56.PostService>(),
        postCoordinator: gh<_i155.PostCoordinator>(),
        postStringProvider: gh<_i58.PostStringProvider>(),
        mapster: gh<_i52.Mapster>(),
      ));
  gh.singleton<_i156.CategoryStore>(_i156.CategoryStore(
    feedStore: gh<_i150.FeedStore>(),
    categoryService: gh<_i6.CategoryService>(),
    categoryStringProvider: gh<_i89.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i157.EnvModule {}

class _$MapsterModule extends _i158.MapsterModule {}

class _$RouterModule extends _i159.RouterModule {}

class _$DeviceInfoPlusModule extends _i160.DeviceInfoPlusModule {}

class _$DioModule extends _i161.DioModule {}

class _$SecureStorageModule extends _i162.SecureStorageModule {}

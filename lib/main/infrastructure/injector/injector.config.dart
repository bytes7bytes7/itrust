// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i20;
import 'package:dio/dio.dart' as _i22;
import 'package:flutter/material.dart' as _i27;
import 'package:flutter/widgets.dart' as _i53;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i24;
import 'package:freezed_annotation/freezed_annotation.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i115;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i122;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i129;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i133;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i51;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i63;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i121;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i128;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i131;
import 'package:itrust/features/auth/auth.dart' as _i65;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i132;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i52;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i64;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i66;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i14;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i12;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i13;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i10;
import 'package:itrust/features/common/application/application.dart' as _i73;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i18;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/common.dart' as _i40;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i46;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i44;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i42;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i38;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i35;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i114;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i85;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i102;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i104;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i110;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i67;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i80;
import 'package:itrust/features/common/domain/repositories/end_user_repository.dart'
    as _i111;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i113;
import 'package:itrust/features/common/domain/services/device_info_service.dart'
    as _i109;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i107;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i108;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i88;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i26;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i74;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i84;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i86;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i103;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i105;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i106;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i68;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i81;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i36;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i11;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i23;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i9;
import 'package:itrust/features/common/infrastructure/services/device_info_service.dart'
    as _i21;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i75;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i97;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i17;
import 'package:itrust/features/features.dart' as _i116;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i153;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i89;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i100;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i157;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i152;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i6;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i98;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i90;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i101;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i7;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i99;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i50;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i48;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i49;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i125;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i124;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i146;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i156;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i93;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i95;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i55;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i61;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i147;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i145;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i155;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i154;
import 'package:itrust/features/post/domain/domain.dart' as _i15;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i59;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i94;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i96;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i56;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i62;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i16;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i60;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i57;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i139;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i143;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i148;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i136;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i91;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i71;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i138;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i141;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i150;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i135;
import 'package:itrust/features/settings/domain/domain.dart' as _i142;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i33;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i29;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i82;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i112;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i92;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i72;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i83;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i34;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i30;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i70;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i78;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i76;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i79;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i77;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i117;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i119;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i137;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i140;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i144;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i149;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i151;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i118;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i120;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i123;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i126;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i127;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i130;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i134;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i32;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/utils/server_settings.dart' as _i69;
import 'package:itrust/utils/utils.dart' as _i87;
import 'package:json_annotation/json_annotation.dart' as _i37;
import 'package:mapster/mapster.dart' as _i54;
import 'package:problem_details/problem_details.dart' as _i31;

import '../../../env/env_module.dart' as _i158;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i159;
import '../router/router.dart' as _i160;
import '../third_party/device_info_plus_module.dart' as _i161;
import '../third_party/dio_module.dart' as _i162;
import '../third_party/secure_storage_module.dart' as _i163;

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
  gh.lazySingleton<_i8.ChatRepository>(
    () => _i11.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i12.ChatService>(
    _i13.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i14.ChatStore>(
      () => _i14.ChatStore(chatService: gh<_i12.ChatService>()));
  gh.singleton<_i15.CommentService>(
    _i16.TestCommentService(),
    registerFor: {_test},
  );
  gh.factory<_i17.ConnectionStore>(() => _i17.ConnectionStore());
  gh.singleton<_i18.DateTimeProvider>(_i19.ProdDateTimeProvider());
  gh.singleton<_i20.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i8.DeviceInfoService>(_i21.ProdDeviceInfoService(
      deviceInfoPlugin: gh<_i20.DeviceInfoPlugin>()));
  gh.singleton<_i22.Dio>(dioModule.dio);
  await gh.singletonAsync<_i8.EndUserRepository>(
    () {
      final i = _i23.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i24.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i25.FormattedDateProvider>(_i26.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i18.DateTimeProvider>()));
  gh.singleton<_i27.GlobalKey<_i27.NavigatorState>>(routerModule.rootKey);
  gh.singleton<
          _i28.JsonConverter<_i29.GetDevicesResponse, Map<String, Object?>>>(
      _i30.GetDevicesResponseJsonConverter());
  gh.singleton<_i28.JsonConverter<_i31.ProblemDetails, Map<String, Object?>>>(
      _i32.ProblemDetailsJsonConverter());
  gh.singleton<
          _i28.JsonConverter<_i33.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i34.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<
          _i28.JsonConverter<_i35.VerifyTokenResponse, Map<String, Object?>>>(
      _i36.VerifyTokenResponseJsonConverter());
  gh.singleton<_i37.JsonConverter<_i38.RegisterResponse, Map<String, Object?>>>(
      _i39.RegisterResponseJsonConverter());
  gh.singleton<
          _i37.JsonConverter<_i40.RefreshTokenResponse, Map<String, Object?>>>(
      _i41.RefreshTokenResponseJsonConverter());
  gh.singleton<_i28.JsonConverter<_i42.LogOutResponse, Map<String, Object?>>>(
      _i43.LogOutResponseJsonConverter());
  gh.singleton<_i28.JsonConverter<_i44.LogInResponse, Map<String, Object?>>>(
      _i45.LogInResponseJsonConverter());
  gh.singleton<
          _i28.JsonConverter<_i46.GetUserByIDResponse, Map<String, Object?>>>(
      _i47.GetUserByIDResponseJsonConverter());
  gh.singleton<_i48.LockService>(
    _i49.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i50.LockStore>(
      () => _i50.LockStore(lockService: gh<_i48.LockService>()));
  gh.singleton<_i51.LogInStringProvider>(_i52.ProdLogInStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i54.Mapster>(mapsterModule.mapster);
  gh.singleton<_i55.PostCommentStringProvider>(
      _i56.ProdPostCommentStringProvider(
          navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i57.PostMapsterRegistrar>(
      _i57.PostMapsterRegistrar(gh<_i54.Mapster>())..register());
  gh.singleton<_i8.PostRepository>(_i58.ProdPostRepository());
  gh.singleton<_i59.PostService>(
    _i60.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i61.PostStringProvider>(_i62.ProdPostStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i63.RegisterStringProvider>(_i64.ProdRegisterStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i65.RulesService>(
    _i66.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i67.ServerExceptionProvider>(
    () => _i68.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i69.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i70.SettingsMapsterRegistrar>(
      _i70.SettingsMapsterRegistrar(gh<_i54.Mapster>())..register());
  gh.singleton<_i71.SettingsStringProvider>(_i72.ProdSettingsStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i73.SuffixNumberProvider>(_i74.ProdSuffixNumberProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i8.TokenService>(_i75.ProdTokenService(
    dio: gh<_i22.Dio>(),
    secureStorage: gh<_i24.FlutterSecureStorage>(),
  ));
  gh.singleton<_i76.UserInfoService>(_i77.TestUserService());
  gh.singleton<_i78.UserInfoStringProvider>(_i79.ProdUserInfoStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i80.UserProvider>(_i81.ProdUserProvider(
    gh<_i22.Dio>(),
    gh<_i69.ServerSettings>(),
  ));
  gh.singleton<_i82.AccountProvider>(_i83.ProdAccountProvider(
    gh<_i22.Dio>(),
    gh<_i69.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i84.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i85.AuthProvider>(_i86.ProdAuthProvider(
    gh<_i22.Dio>(),
    gh<_i87.ServerSettings>(),
  ));
  gh.singleton<_i73.BeautifiedNumberProvider>(_i88.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i73.SuffixNumberProvider>()));
  gh.singleton<_i89.CategoryStringProvider>(_i90.ProdCategoryStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i91.ChangePersonalInfoStringProvider>(
      _i92.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i93.CommentReplyStringProvider>(
      _i94.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i95.CommentStringProvider>(_i96.ProdCommentStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i97.CommonMapsterRegistrar>(
      _i97.CommonMapsterRegistrar(gh<_i54.Mapster>())..register());
  gh.singleton<_i98.FeedService>(_i99.ProdFeedService(
    postRepository: gh<_i40.PostRepository>(),
    endUserRepository: gh<_i40.EndUserRepository>(),
  ));
  gh.singleton<_i100.FeedStringProvider>(_i101.ProdFeedStringProvider(
      navigatorKey: gh<_i53.GlobalKey<_i53.NavigatorState>>()));
  gh.singleton<_i102.KeepFreshTokenExceptionProvider>(
      _i103.ProdKeepFreshTokenExceptionProvider(
          gh<_i67.ServerExceptionProvider>()));
  gh.singleton<_i104.KeepFreshTokenProvider>(_i105.ProdKeepFreshTokenProvider(
    gh<_i22.Dio>(),
    gh<_i69.ServerSettings>(),
  ));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i106.ProdServerAvailabilityProvider(gh<_i69.ServerSettings>()));
  gh.singleton<_i107.KeepFreshTokenService>(_i107.KeepFreshTokenService(
    tokenService: gh<_i108.TokenService>(),
    keepFreshTokenProvider: gh<_i104.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoService: gh<_i109.DeviceInfoService>(),
    keepFreshTokenExceptionProvider:
        gh<_i102.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i110.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i111.EndUserRepository>(),
  ));
  gh.singleton<_i112.AccountService>(
    _i112.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i82.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i8.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i113.AuthService>(
    () {
      final i = _i113.AuthService(
        serverAvailabilityProvider: gh<_i110.ServerAvailabilityProvider>(),
        authProvider: gh<_i85.AuthProvider>(),
        tokenService: gh<_i108.TokenService>(),
        endUserRepository: gh<_i111.EndUserRepository>(),
        authExceptionProvider: gh<_i114.AuthExceptionProvider>(),
        deviceInfoService: gh<_i109.DeviceInfoService>(),
        keepFreshTokenService: gh<_i107.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i115.GoRouter>(routerModule.router(
    gh<_i27.GlobalKey<_i27.NavigatorState>>(),
    gh<_i116.AuthService>(),
  ));
  gh.singleton<_i117.HomeCoordinator>(
    _i118.ProdHomeCoordinator(goRouter: gh<_i115.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i119.HomeStore>(
      () => _i119.HomeStore(homeCoordinator: gh<_i117.HomeCoordinator>()));
  gh.singleton<_i116.LogInCoordinator>(
    _i120.ProdLogInCoordinator(
      goRouter: gh<_i115.GoRouter>(),
      authStatusProvider: gh<_i116.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i121.LogInStore>(() => _i121.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i122.LogInCoordinator>(),
        logInStringProvider: gh<_i51.LogInStringProvider>(),
      ));
  gh.singleton<_i116.MenuCoordinator>(
      _i123.ProdMenuCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.singleton<_i124.MenuStore>(
      _i124.MenuStore(menuCoordinator: gh<_i125.MenuCoordinator>()));
  gh.singleton<_i116.PostCoordinator>(
      _i126.ProdPostCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.singleton<_i116.RegisterCoordinator>(
    _i127.ProdRegisterCoordinator(
      goRouter: gh<_i115.GoRouter>(),
      authStatusProvider: gh<_i116.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i128.RegisterStore>(() => _i128.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i129.RegisterCoordinator>(),
        registerStringProvider: gh<_i63.RegisterStringProvider>(),
      ));
  gh.singleton<_i116.RulesCoordinator>(
      _i130.ProdRulesCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.factory<_i131.RulesStore>(() => _i131.RulesStore(
        rulesService: gh<_i132.RulesService>(),
        rulesCoordinator: gh<_i133.RulesCoordinator>(),
      ));
  gh.singleton<_i116.SettingsCoordinator>(
      _i134.ProdSettingsCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.singleton<_i135.SettingsStore>(_i135.SettingsStore(
    authService: gh<_i40.AuthService>(),
    settingsCoordinator: gh<_i136.SettingsCoordinator>(),
    settingsStringProvider: gh<_i71.SettingsStringProvider>(),
    accountService: gh<_i112.AccountService>(),
    mapster: gh<_i54.Mapster>(),
  ));
  gh.singleton<_i116.AccountSettingsCoordinator>(
      _i137.ProdAccountSettingsCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.factory<_i138.AccountSettingsStore>(() => _i138.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i139.AccountSettingsCoordinator>()));
  gh.singleton<_i116.ChangePersonalInfoCoordinator>(
      _i140.ProdChangePersonalInfoCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.factory<_i141.ChangePersonalInfoStore>(() => _i141.ChangePersonalInfoStore(
        accountService: gh<_i142.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i143.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i91.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i116.CommentCoordinator>(
      _i144.ProdCommentCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.factory<_i145.CommentReplyStore>(() => _i145.CommentReplyStore(
        commentService: gh<_i15.CommentService>(),
        commentCoordinator: gh<_i146.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i93.CommentReplyStringProvider>(),
        mapster: gh<_i54.Mapster>(),
      ));
  gh.factory<_i147.CommentStore>(() => _i147.CommentStore(
        commentReplyStore: gh<_i145.CommentReplyStore>(),
        commentService: gh<_i15.CommentService>(),
        commentCoordinator: gh<_i146.CommentCoordinator>(),
        commentStringProvider: gh<_i95.CommentStringProvider>(),
        mapster: gh<_i54.Mapster>(),
      ));
  gh.singleton<_i148.DevicesCoordinator>(
      _i149.ProdDevicesCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.singleton<_i150.DevicesStore>(_i150.DevicesStore(
    devicesCoordinator: gh<_i148.DevicesCoordinator>(),
    accountService: gh<_i112.AccountService>(),
    mapster: gh<_i54.Mapster>(),
  ));
  gh.singleton<_i116.FeedCoordinator>(
      _i151.ProdFeedCoordinator(goRouter: gh<_i115.GoRouter>()));
  gh.factory<_i152.FeedStore>(() => _i152.FeedStore(
        feedService: gh<_i98.FeedService>(),
        feedCoordinator: gh<_i153.FeedCoordinator>(),
        feedStringProvider: gh<_i100.FeedStringProvider>(),
        mapster: gh<_i54.Mapster>(),
      ));
  gh.factory<_i154.PostCommentStore>(() => _i154.PostCommentStore(
        commentService: gh<_i15.CommentService>(),
        commentCoordinator: gh<_i146.CommentCoordinator>(),
        postCommentStringProvider: gh<_i55.PostCommentStringProvider>(),
        mapster: gh<_i54.Mapster>(),
      ));
  gh.factory<_i155.PostStore>(() => _i155.PostStore(
        postCommentStore: gh<_i154.PostCommentStore>(),
        postService: gh<_i59.PostService>(),
        postCoordinator: gh<_i156.PostCoordinator>(),
        postStringProvider: gh<_i61.PostStringProvider>(),
        mapster: gh<_i54.Mapster>(),
      ));
  gh.singleton<_i157.CategoryStore>(_i157.CategoryStore(
    feedStore: gh<_i152.FeedStore>(),
    categoryService: gh<_i6.CategoryService>(),
    categoryStringProvider: gh<_i89.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i158.EnvModule {}

class _$MapsterModule extends _i159.MapsterModule {}

class _$RouterModule extends _i160.RouterModule {}

class _$DeviceInfoPlusModule extends _i161.DeviceInfoPlusModule {}

class _$DioModule extends _i162.DioModule {}

class _$SecureStorageModule extends _i163.SecureStorageModule {}

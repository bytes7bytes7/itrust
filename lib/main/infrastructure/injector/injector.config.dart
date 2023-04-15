// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i18;
import 'package:dio/dio.dart' as _i20;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i67;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i23;
import 'package:freezed_annotation/freezed_annotation.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i148;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i155;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i162;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i165;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i65;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i78;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i80;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i154;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i161;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i164;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i30;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i131;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i133;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i66;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i79;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i81;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i132;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i90;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/common.dart' as _i55;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/end_users_response/end_users_response.dart'
    as _i59;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i46;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i44;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i32;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i61;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i28;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i57;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i53;
import 'package:itrust/features/common/domain/dto/users_response/users_response.dart'
    as _i50;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i48;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i143;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i101;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i137;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i124;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i126;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i129;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i138;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i82;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i96;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i142;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i135;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i139;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i140;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i104;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i91;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i100;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i102;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i125;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i127;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i130;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i134;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i83;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i97;
import 'package:itrust/features/common/infrastructure/json_converters/end_users_response_json_converter.dart'
    as _i60;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i33;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i62;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i56;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i54;
import 'package:itrust/features/common/infrastructure/json_converters/users_response_json_converter.dart'
    as _i51;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i49;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i128;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i115;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i15;
import 'package:itrust/features/features.dart' as _i149;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i186;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i105;
import 'package:itrust/features/feed/application/providers/feed_string_provider.dart'
    as _i118;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i193;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i185;
import 'package:itrust/features/feed/domain/dto/get_feed_response/get_feed_response.dart'
    as _i40;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i38;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i116;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i144;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i146;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i106;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i119;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i117;
import 'package:itrust/features/feed/infrastructure/json_converters/get_feed_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/friends/application/coordinators/friends_coordinator.dart'
    as _i187;
import 'package:itrust/features/friends/application/providers/friends_string_provider.dart'
    as _i122;
import 'package:itrust/features/friends/application/stores/friends/friends_store.dart'
    as _i189;
import 'package:itrust/features/friends/domain/providers/friends_provider.dart'
    as _i120;
import 'package:itrust/features/friends/domain/services/friends_service.dart'
    as _i147;
import 'package:itrust/features/friends/infrastructure/app_providers/friends_string_provider.dart'
    as _i123;
import 'package:itrust/features/friends/infrastructure/domain_providers/friends_provider/friends_provider.dart'
    as _i121;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i64;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i63;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i158;
import 'package:itrust/features/menu/application/providers/menu_string_provider.dart'
    as _i69;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i157;
import 'package:itrust/features/menu/infrastructure/app_providers/menu_string_provider.dart'
    as _i70;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i179;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i192;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i111;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i113;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i71;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i76;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i180;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i177;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i191;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i190;
import 'package:itrust/features/post/domain/domain.dart' as _i178;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i109;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i145;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i112;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i114;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i72;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i77;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i110;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i73;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i171;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i175;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i181;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i168;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i107;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i86;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i170;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i173;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i183;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i167;
import 'package:itrust/features/settings/domain/domain.dart' as _i174;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i34;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i36;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i98;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i141;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i108;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i87;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i99;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i35;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i37;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i85;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i94;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i95;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i150;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i152;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i169;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i172;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i176;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i182;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i184;
import 'package:itrust/main/infrastructure/coordinators/friends_coordinator.dart'
    as _i188;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i151;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i153;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i156;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i159;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i160;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i163;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i166;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i43;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i10;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i14;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i22;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i75;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i89;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i93;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i9;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i13;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i21;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i136;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i74;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i88;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i92;
import 'package:itrust/utils/server_settings.dart' as _i84;
import 'package:itrust/utils/utils.dart' as _i103;
import 'package:json_annotation/json_annotation.dart' as _i52;
import 'package:mapster/mapster.dart' as _i68;
import 'package:problem_details/problem_details.dart' as _i42;

import '../../../env/env_module.dart' as _i194;
import '../router/router.dart' as _i195;
import '../third_party/device_info_plus_module.dart' as _i196;
import '../third_party/dio_module.dart' as _i197;
import '../third_party/mapster_module.dart' as _i199;
import '../third_party/secure_storage_module.dart' as _i198;

const String _dev = 'dev';

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
  gh.singleton<_i6.ChatListService>(_i6.ChatListService());
  gh.singleton<_i7.ChatListStore>(
      _i7.ChatListStore(chatListService: gh<_i8.ChatListService>()));
  gh.lazySingleton<_i9.ChatRepository>(
    () => _i10.DevChatRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i11.ChatService>(_i11.ChatService());
  gh.factory<_i12.ChatStore>(
      () => _i12.ChatStore(chatService: gh<_i11.ChatService>()));
  gh.singleton<_i13.CommentRepository>(
    _i14.DevCommentRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i15.ConnectionStore>(() => _i15.ConnectionStore());
  gh.singleton<_i16.DateTimeProvider>(_i17.ProdDateTimeProvider());
  gh.singleton<_i18.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i8.DeviceInfoProvider>(_i19.ProdDeviceInfoProvider(
      deviceInfoPlugin: gh<_i18.DeviceInfoPlugin>()));
  gh.singleton<_i20.Dio>(dioModule.dio);
  await gh.singletonAsync<_i21.EndUserRepository>(
    () {
      final i = _i22.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i23.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i24.FormattedDateProvider>(_i25.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i16.DateTimeProvider>()));
  gh.singleton<_i26.GlobalKey<_i26.NavigatorState>>(routerModule.rootKey);
  gh.singleton<
          _i27.JsonConverter<_i28.PostCommentsResponse, Map<String, Object?>>>(
      _i29.PostCommentsResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i30.RulesResponse, Map<String, Object?>>>(
      _i31.RulesResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i32.LogOutResponse, Map<String, Object?>>>(
      _i33.LogOutResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i34.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i35.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i36.GetDevicesResponse, Map<String, Object?>>>(
      _i37.GetDevicesResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i38.GetTagsResponse, Map<String, Object?>>>(
      _i39.GetTagsResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i40.GetFeedResponse, Map<String, Object?>>>(
      _i41.GetFeedResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i42.ProblemDetails, Map<String, Object?>>>(
      _i43.ProblemDetailsJsonConverter());
  gh.singleton<_i27.JsonConverter<_i44.LogInResponse, Map<String, Object?>>>(
      _i45.LogInResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i46.GetUserByIDResponse, Map<String, Object?>>>(
      _i47.GetUserByIDResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i48.VerifyTokenResponse, Map<String, Object?>>>(
      _i49.VerifyTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i50.UsersResponse, Map<String, Object?>>>(
      _i51.UsersResponseJsonConverter());
  gh.singleton<_i52.JsonConverter<_i53.RegisterResponse, Map<String, Object?>>>(
      _i54.RegisterResponseJsonConverter());
  gh.singleton<
          _i52.JsonConverter<_i55.RefreshTokenResponse, Map<String, Object?>>>(
      _i56.RefreshTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i57.PostResponse, Map<String, Object?>>>(
      _i58.PostResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i59.EndUsersResponse, Map<String, Object?>>>(
      _i60.EndUsersResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i61.PostCommentResponse, Map<String, Object?>>>(
      _i62.PostCommentResponseJsonConverter());
  gh.singleton<_i63.LockService>(_i63.LockService());
  gh.factory<_i64.LockStore>(
      () => _i64.LockStore(lockService: gh<_i63.LockService>()));
  gh.singleton<_i65.LogInStringProvider>(_i66.ProdLogInStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i68.Mapster>(mapsterModule.mapster);
  gh.singleton<_i69.MenuStringProvider>(_i70.ProdMenuStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i71.PostCommentStringProvider>(
      _i72.ProdPostCommentStringProvider(
          navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i73.PostMapsterRegistrar>(
      _i73.PostMapsterRegistrar(gh<_i68.Mapster>())..register());
  gh.singleton<_i74.PostRepository>(
    _i75.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i76.PostStringProvider>(_i77.ProdPostStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i78.RegisterStringProvider>(_i79.ProdRegisterStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i80.RulesStringProvider>(_i81.ProdRulesStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  await gh.singletonAsync<_i82.ServerExceptionProvider>(
    () => _i83.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i84.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i85.SettingsMapsterRegistrar>(
      _i85.SettingsMapsterRegistrar(gh<_i68.Mapster>())..register());
  gh.singleton<_i86.SettingsStringProvider>(_i87.ProdSettingsStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i88.StaffUserRepository>(
    _i89.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i90.SuffixNumberProvider>(_i91.ProdSuffixNumberProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i92.TokenRepository>(_i93.ProdTokenRepository(
    dio: gh<_i20.Dio>(),
    secureStorage: gh<_i23.FlutterSecureStorage>(),
  ));
  gh.singleton<_i94.UserInfoStringProvider>(_i95.ProdUserInfoStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i96.UserProvider>(_i97.ProdUserProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i98.AccountProvider>(_i99.ProdAccountProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i100.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i101.AuthProvider>(_i102.ProdAuthProvider(
    gh<_i20.Dio>(),
    gh<_i103.ServerSettings>(),
  ));
  gh.singleton<_i90.BeautifiedNumberProvider>(
      _i104.ProdBeautifiedNumberProvider(
          suffixNumberProvider: gh<_i90.SuffixNumberProvider>()));
  gh.singleton<_i105.CategoryStringProvider>(_i106.ProdCategoryStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i107.ChangePersonalInfoStringProvider>(
      _i108.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i109.CommentProvider>(_i110.ProdCommentProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i111.CommentReplyStringProvider>(
      _i112.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i113.CommentStringProvider>(_i114.ProdCommentStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i115.CommonMapsterRegistrar>(
      _i115.CommonMapsterRegistrar(gh<_i68.Mapster>())..register());
  gh.singleton<_i116.FeedProvider>(_i117.ProdFeedProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i118.FeedStringProvider>(_i119.ProdFeedStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i120.FriendsProvider>(_i121.ProdFriendsProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i122.FriendsStringProvider>(_i123.ProdFriendsStringProvider(
      navigatorKey: gh<_i67.GlobalKey<_i67.NavigatorState>>()));
  gh.singleton<_i124.KeepFreshTokenExceptionProvider>(
      _i125.ProdKeepFreshTokenExceptionProvider(
          gh<_i82.ServerExceptionProvider>()));
  gh.singleton<_i126.KeepFreshTokenProvider>(_i127.ProdKeepFreshTokenProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i128.MediaUrlCreator>(
      _i128.MediaUrlCreator(serverSettings: gh<_i84.ServerSettings>()));
  gh.singleton<_i129.PostProvider>(_i130.ProdPostProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i131.RulesProvider>(_i132.ProdRulesProvider(
    gh<_i20.Dio>(),
    gh<_i84.ServerSettings>(),
  ));
  gh.singleton<_i133.RulesService>(
      _i133.RulesService(rulesProvider: gh<_i131.RulesProvider>()));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i134.ProdServerAvailabilityProvider(gh<_i84.ServerSettings>()));
  gh.singleton<_i135.KeepFreshTokenService>(_i135.KeepFreshTokenService(
    tokenService: gh<_i136.TokenRepository>(),
    keepFreshTokenProvider: gh<_i126.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i137.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i124.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i138.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i136.EndUserRepository>(),
  ));
  gh.singleton<_i139.PostService>(_i139.PostService(
    keepFreshTokenService: gh<_i135.KeepFreshTokenService>(),
    postProvider: gh<_i129.PostProvider>(),
    postRepository: gh<_i136.PostRepository>(),
    commentRepository: gh<_i136.CommentRepository>(),
  ));
  gh.singleton<_i140.UserService>(_i140.UserService(
    keepFreshTokenService: gh<_i135.KeepFreshTokenService>(),
    userProvider: gh<_i96.UserProvider>(),
    endUserRepository: gh<_i136.EndUserRepository>(),
    staffUserRepository: gh<_i136.StaffUserRepository>(),
  ));
  gh.singleton<_i141.AccountService>(
    _i141.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i98.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i136.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i142.AuthService>(
    () {
      final i = _i142.AuthService(
        serverAvailabilityProvider: gh<_i138.ServerAvailabilityProvider>(),
        authProvider: gh<_i101.AuthProvider>(),
        tokenService: gh<_i136.TokenRepository>(),
        endUserRepository: gh<_i136.EndUserRepository>(),
        authExceptionProvider: gh<_i143.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i137.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i135.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i144.CategoryService>(_i144.CategoryService(
    keepFreshTokenService: gh<_i135.KeepFreshTokenService>(),
    feedProvider: gh<_i116.FeedProvider>(),
  ));
  gh.singleton<_i145.CommentService>(_i145.CommentService(
    keepFreshTokenService: gh<_i55.KeepFreshTokenService>(),
    commentProvider: gh<_i109.CommentProvider>(),
    commentRepository: gh<_i136.CommentRepository>(),
  ));
  gh.singleton<_i146.FeedService>(_i146.FeedService(
    keepFreshTokenService: gh<_i55.KeepFreshTokenService>(),
    feedProvider: gh<_i116.FeedProvider>(),
    postRepository: gh<_i136.PostRepository>(),
  ));
  gh.singleton<_i147.FriendsService>(_i147.FriendsService(
    keepFreshTokenService: gh<_i135.KeepFreshTokenService>(),
    friendsProvider: gh<_i120.FriendsProvider>(),
    endUserRepository: gh<_i21.EndUserRepository>(),
  ));
  gh.singleton<_i148.GoRouter>(routerModule.router(
    gh<_i26.GlobalKey<_i26.NavigatorState>>(),
    gh<_i149.AuthService>(),
  ));
  gh.singleton<_i150.HomeCoordinator>(
    _i151.ProdHomeCoordinator(goRouter: gh<_i148.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i152.HomeStore>(
      () => _i152.HomeStore(homeCoordinator: gh<_i150.HomeCoordinator>()));
  gh.singleton<_i149.LogInCoordinator>(
    _i153.ProdLogInCoordinator(
      goRouter: gh<_i148.GoRouter>(),
      authStatusProvider: gh<_i149.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i154.LogInStore>(() => _i154.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i155.LogInCoordinator>(),
        logInStringProvider: gh<_i65.LogInStringProvider>(),
      ));
  gh.singleton<_i149.MenuCoordinator>(
      _i156.ProdMenuCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.singleton<_i157.MenuStore>(_i157.MenuStore(
    menuCoordinator: gh<_i158.MenuCoordinator>(),
    menuStringProvider: gh<_i69.MenuStringProvider>(),
    endUserRepository: gh<_i136.EndUserRepository>(),
  ));
  gh.singleton<_i149.PostCoordinator>(
      _i159.ProdPostCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.singleton<_i149.RegisterCoordinator>(
    _i160.ProdRegisterCoordinator(
      goRouter: gh<_i148.GoRouter>(),
      authStatusProvider: gh<_i149.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i161.RegisterStore>(() => _i161.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i162.RegisterCoordinator>(),
        registerStringProvider: gh<_i78.RegisterStringProvider>(),
      ));
  gh.singleton<_i149.RulesCoordinator>(
      _i163.ProdRulesCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.factory<_i164.RulesStore>(() => _i164.RulesStore(
        rulesService: gh<_i133.RulesService>(),
        rulesCoordinator: gh<_i165.RulesCoordinator>(),
        rulesStringProvider: gh<_i80.RulesStringProvider>(),
      ));
  gh.singleton<_i149.SettingsCoordinator>(
      _i166.ProdSettingsCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.singleton<_i167.SettingsStore>(_i167.SettingsStore(
    authService: gh<_i55.AuthService>(),
    settingsCoordinator: gh<_i168.SettingsCoordinator>(),
    settingsStringProvider: gh<_i86.SettingsStringProvider>(),
    accountService: gh<_i141.AccountService>(),
    mapster: gh<_i68.Mapster>(),
  ));
  gh.singleton<_i149.AccountSettingsCoordinator>(
      _i169.ProdAccountSettingsCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.factory<_i170.AccountSettingsStore>(() => _i170.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i171.AccountSettingsCoordinator>()));
  gh.singleton<_i149.ChangePersonalInfoCoordinator>(
      _i172.ProdChangePersonalInfoCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.factory<_i173.ChangePersonalInfoStore>(() => _i173.ChangePersonalInfoStore(
        accountService: gh<_i174.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i175.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i107.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i149.CommentCoordinator>(
      _i176.ProdCommentCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.factory<_i177.CommentReplyStore>(() => _i177.CommentReplyStore(
        commentService: gh<_i178.CommentService>(),
        userService: gh<_i55.UserService>(),
        commentCoordinator: gh<_i179.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i111.CommentReplyStringProvider>(),
        mapster: gh<_i68.Mapster>(),
      ));
  gh.factory<_i180.CommentStore>(() => _i180.CommentStore(
        commentReplyStore: gh<_i177.CommentReplyStore>(),
        commentService: gh<_i178.CommentService>(),
        userService: gh<_i55.UserService>(),
        commentCoordinator: gh<_i179.CommentCoordinator>(),
        commentStringProvider: gh<_i113.CommentStringProvider>(),
        mapster: gh<_i68.Mapster>(),
      ));
  gh.singleton<_i181.DevicesCoordinator>(
      _i182.ProdDevicesCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.singleton<_i183.DevicesStore>(_i183.DevicesStore(
    devicesCoordinator: gh<_i181.DevicesCoordinator>(),
    accountService: gh<_i141.AccountService>(),
    mapster: gh<_i68.Mapster>(),
  ));
  gh.singleton<_i149.FeedCoordinator>(
      _i184.ProdFeedCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.factory<_i185.FeedStore>(() => _i185.FeedStore(
        feedService: gh<_i146.FeedService>(),
        userService: gh<_i8.UserService>(),
        postService: gh<_i8.PostService>(),
        feedCoordinator: gh<_i186.FeedCoordinator>(),
        feedStringProvider: gh<_i118.FeedStringProvider>(),
        mapster: gh<_i68.Mapster>(),
      ));
  gh.singleton<_i187.FriendsCoordinator>(
      _i188.ProdFriendsCoordinator(goRouter: gh<_i148.GoRouter>()));
  gh.factory<_i189.FriendsStore>(() => _i189.FriendsStore(
        friendsService: gh<_i147.FriendsService>(),
        friendsStringProvider: gh<_i122.FriendsStringProvider>(),
        coordinator: gh<_i187.FriendsCoordinator>(),
        mapster: gh<_i68.Mapster>(),
      ));
  gh.factory<_i190.PostCommentStore>(() => _i190.PostCommentStore(
        commentService: gh<_i178.CommentService>(),
        userService: gh<_i55.UserService>(),
        commentCoordinator: gh<_i179.CommentCoordinator>(),
        postCommentStringProvider: gh<_i71.PostCommentStringProvider>(),
        mapster: gh<_i68.Mapster>(),
      ));
  gh.factory<_i191.PostStore>(() => _i191.PostStore(
        postCommentStore: gh<_i190.PostCommentStore>(),
        postService: gh<_i55.PostService>(),
        userService: gh<_i55.UserService>(),
        postCoordinator: gh<_i192.PostCoordinator>(),
        postStringProvider: gh<_i76.PostStringProvider>(),
        mapster: gh<_i68.Mapster>(),
      ));
  gh.singleton<_i193.CategoryStore>(_i193.CategoryStore(
    feedStore: gh<_i185.FeedStore>(),
    categoryService: gh<_i144.CategoryService>(),
    categoryStringProvider: gh<_i105.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i194.EnvModule {}

class _$RouterModule extends _i195.RouterModule {}

class _$DeviceInfoPlusModule extends _i196.DeviceInfoPlusModule {}

class _$DioModule extends _i197.DioModule {}

class _$SecureStorageModule extends _i198.SecureStorageModule {}

class _$MapsterModule extends _i199.MapsterModule {}

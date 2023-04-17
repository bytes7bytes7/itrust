// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i18;
import 'package:dio/dio.dart' as _i20;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i69;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i23;
import 'package:freezed_annotation/freezed_annotation.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i156;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i163;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i170;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i173;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i67;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i80;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i82;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i162;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i169;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i172;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i38;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i138;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i140;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i68;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i81;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i83;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i139;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i92;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/common.dart' as _i57;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/end_users_response/end_users_response.dart'
    as _i53;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i46;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i44;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i51;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i63;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i42;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i61;
import 'package:itrust/features/common/domain/dto/posts_response/posts_response.dart'
    as _i55;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i49;
import 'package:itrust/features/common/domain/dto/users_response/users_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i32;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i151;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i108;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i144;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i131;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i133;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i136;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i145;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i84;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i102;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i150;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i142;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i146;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i148;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i111;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i93;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i107;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i109;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i132;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i134;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i137;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i141;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i85;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i103;
import 'package:itrust/features/common/infrastructure/json_converters/end_users_response_json_converter.dart'
    as _i54;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i52;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i64;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i62;
import 'package:itrust/features/common/infrastructure/json_converters/posts_response_json_converter.dart'
    as _i56;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i50;
import 'package:itrust/features/common/infrastructure/json_converters/users_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i33;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i135;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i122;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i15;
import 'package:itrust/features/features.dart' as _i157;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i196;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i112;
import 'package:itrust/features/feed/application/providers/feed_string_provider.dart'
    as _i125;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i204;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i195;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i28;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i123;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i152;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i154;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i113;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i126;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i124;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/friends/application/coordinators/friends_coordinator.dart'
    as _i197;
import 'package:itrust/features/friends/application/providers/friends_string_provider.dart'
    as _i129;
import 'package:itrust/features/friends/application/stores/friends/friends_store.dart'
    as _i199;
import 'package:itrust/features/friends/domain/providers/friends_provider.dart'
    as _i127;
import 'package:itrust/features/friends/domain/services/friends_service.dart'
    as _i155;
import 'package:itrust/features/friends/infrastructure/app_providers/friends_string_provider.dart'
    as _i130;
import 'package:itrust/features/friends/infrastructure/domain_providers/friends_provider/friends_provider.dart'
    as _i128;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i66;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i65;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i166;
import 'package:itrust/features/menu/application/providers/menu_string_provider.dart'
    as _i71;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i165;
import 'package:itrust/features/menu/infrastructure/app_providers/menu_string_provider.dart'
    as _i72;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i189;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i202;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i118;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i120;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i73;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i78;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i190;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i187;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i201;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i200;
import 'package:itrust/features/post/domain/domain.dart' as _i188;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i116;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i153;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i119;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i121;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i74;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i79;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i117;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i75;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i181;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i185;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i191;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i176;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i114;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i88;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i180;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i183;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i193;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i175;
import 'package:itrust/features/settings/domain/domain.dart' as _i184;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i36;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i40;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i105;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i149;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i115;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i89;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i106;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i37;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i87;
import 'package:itrust/features/user_wall/application/coordinators/coordinators.dart'
    as _i206;
import 'package:itrust/features/user_wall/application/coordinators/user_wall_coordinator.dart'
    as _i177;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i98;
import 'package:itrust/features/user_wall/application/providers/user_posts_string_provider.dart'
    as _i100;
import 'package:itrust/features/user_wall/application/stores/user_info/user_info_store.dart'
    as _i205;
import 'package:itrust/features/user_wall/application/stores/user_posts/user_posts_store.dart'
    as _i203;
import 'package:itrust/features/user_wall/domain/dto/user_info_response/user_info_response.dart'
    as _i34;
import 'package:itrust/features/user_wall/domain/providers/user_info_provider.dart'
    as _i96;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i147;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i99;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_posts_string_provider.dart'
    as _i101;
import 'package:itrust/features/user_wall/infrastructure/domain_providers/user_info_provider/user_info_provider.dart'
    as _i97;
import 'package:itrust/features/user_wall/infrastructure/json_converters/user_info_response_json_converter.dart'
    as _i35;
import 'package:itrust/features/user_wall/infrastructure/third_party/mapster_registrar.dart'
    as _i104;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i158;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i160;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i179;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i182;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i186;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i192;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i194;
import 'package:itrust/main/infrastructure/coordinators/friends_coordinator.dart'
    as _i198;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i159;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i161;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i164;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i167;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i168;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i171;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i174;
import 'package:itrust/main/infrastructure/coordinators/user_wall_coordinator.dart'
    as _i178;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i60;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i10;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i14;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i22;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i77;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i91;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i95;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i9;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i13;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i21;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i143;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i76;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i90;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i94;
import 'package:itrust/utils/server_settings.dart' as _i86;
import 'package:itrust/utils/utils.dart' as _i110;
import 'package:json_annotation/json_annotation.dart' as _i48;
import 'package:mapster/mapster.dart' as _i70;
import 'package:problem_details/problem_details.dart' as _i59;

import '../../../env/env_module.dart' as _i207;
import '../router/router.dart' as _i208;
import '../third_party/device_info_plus_module.dart' as _i209;
import '../third_party/dio_module.dart' as _i210;
import '../third_party/mapster_module.dart' as _i211;
import '../third_party/secure_storage_module.dart' as _i212;

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
  gh.singleton<_i27.JsonConverter<_i28.GetTagsResponse, Map<String, Object?>>>(
      _i29.GetTagsResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i30.UsersResponse, Map<String, Object?>>>(
      _i31.UsersResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i32.VerifyTokenResponse, Map<String, Object?>>>(
      _i33.VerifyTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i34.UserInfoResponse, Map<String, Object?>>>(
      _i35.UserInfoResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i36.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i37.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i38.RulesResponse, Map<String, Object?>>>(
      _i39.RulesResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i40.GetDevicesResponse, Map<String, Object?>>>(
      _i41.GetDevicesResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i42.PostCommentsResponse, Map<String, Object?>>>(
      _i43.PostCommentsResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i44.LogInResponse, Map<String, Object?>>>(
      _i45.LogInResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i46.GetUserByIDResponse, Map<String, Object?>>>(
      _i47.GetUserByIDResponseJsonConverter());
  gh.singleton<_i48.JsonConverter<_i49.RegisterResponse, Map<String, Object?>>>(
      _i50.RegisterResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i51.LogOutResponse, Map<String, Object?>>>(
      _i52.LogOutResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i53.EndUsersResponse, Map<String, Object?>>>(
      _i54.EndUsersResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i55.PostsResponse, Map<String, Object?>>>(
      _i56.PostsResponseJsonConverter());
  gh.singleton<
          _i48.JsonConverter<_i57.RefreshTokenResponse, Map<String, Object?>>>(
      _i58.RefreshTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i59.ProblemDetails, Map<String, Object?>>>(
      _i60.ProblemDetailsJsonConverter());
  gh.singleton<_i27.JsonConverter<_i61.PostResponse, Map<String, Object?>>>(
      _i62.PostResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i63.PostCommentResponse, Map<String, Object?>>>(
      _i64.PostCommentResponseJsonConverter());
  gh.singleton<_i65.LockService>(_i65.LockService());
  gh.factory<_i66.LockStore>(
      () => _i66.LockStore(lockService: gh<_i65.LockService>()));
  gh.singleton<_i67.LogInStringProvider>(_i68.ProdLogInStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i70.Mapster>(mapsterModule.mapster);
  gh.singleton<_i71.MenuStringProvider>(_i72.ProdMenuStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i73.PostCommentStringProvider>(
      _i74.ProdPostCommentStringProvider(
          navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i75.PostMapsterRegistrar>(
      _i75.PostMapsterRegistrar(gh<_i70.Mapster>())..register());
  gh.singleton<_i76.PostRepository>(
    _i77.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i78.PostStringProvider>(_i79.ProdPostStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i80.RegisterStringProvider>(_i81.ProdRegisterStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i82.RulesStringProvider>(_i83.ProdRulesStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  await gh.singletonAsync<_i84.ServerExceptionProvider>(
    () => _i85.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i86.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i87.SettingsMapsterRegistrar>(
      _i87.SettingsMapsterRegistrar(gh<_i70.Mapster>())..register());
  gh.singleton<_i88.SettingsStringProvider>(_i89.ProdSettingsStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i90.StaffUserRepository>(
    _i91.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i92.SuffixNumberProvider>(_i93.ProdSuffixNumberProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i94.TokenRepository>(_i95.ProdTokenRepository(
    dio: gh<_i20.Dio>(),
    secureStorage: gh<_i23.FlutterSecureStorage>(),
  ));
  gh.singleton<_i96.UserInfoProvider>(_i97.ProdUserInfoProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i98.UserInfoStringProvider>(_i99.ProdUserInfoStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i100.UserPostsStringProvider>(_i101.ProdUserPostsStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i102.UserProvider>(_i103.ProdUserProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i104.UserWallMapsterRegistrar>(
      _i104.UserWallMapsterRegistrar(gh<_i70.Mapster>())..register());
  gh.singleton<_i105.AccountProvider>(_i106.ProdAccountProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i107.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i108.AuthProvider>(_i109.ProdAuthProvider(
    gh<_i20.Dio>(),
    gh<_i110.ServerSettings>(),
  ));
  gh.singleton<_i92.BeautifiedNumberProvider>(
      _i111.ProdBeautifiedNumberProvider(
          suffixNumberProvider: gh<_i92.SuffixNumberProvider>()));
  gh.singleton<_i112.CategoryStringProvider>(_i113.ProdCategoryStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i114.ChangePersonalInfoStringProvider>(
      _i115.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i116.CommentProvider>(_i117.ProdCommentProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i118.CommentReplyStringProvider>(
      _i119.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i120.CommentStringProvider>(_i121.ProdCommentStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i122.CommonMapsterRegistrar>(
      _i122.CommonMapsterRegistrar(gh<_i70.Mapster>())..register());
  gh.singleton<_i123.FeedProvider>(_i124.ProdFeedProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i125.FeedStringProvider>(_i126.ProdFeedStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i127.FriendsProvider>(_i128.ProdFriendsProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i129.FriendsStringProvider>(_i130.ProdFriendsStringProvider(
      navigatorKey: gh<_i69.GlobalKey<_i69.NavigatorState>>()));
  gh.singleton<_i131.KeepFreshTokenExceptionProvider>(
      _i132.ProdKeepFreshTokenExceptionProvider(
          gh<_i84.ServerExceptionProvider>()));
  gh.singleton<_i133.KeepFreshTokenProvider>(_i134.ProdKeepFreshTokenProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i135.MediaUrlCreator>(
      _i135.MediaUrlCreator(serverSettings: gh<_i86.ServerSettings>()));
  gh.singleton<_i136.PostProvider>(_i137.ProdPostProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i138.RulesProvider>(_i139.ProdRulesProvider(
    gh<_i20.Dio>(),
    gh<_i86.ServerSettings>(),
  ));
  gh.singleton<_i140.RulesService>(
      _i140.RulesService(rulesProvider: gh<_i138.RulesProvider>()));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i141.ProdServerAvailabilityProvider(gh<_i86.ServerSettings>()));
  gh.singleton<_i142.KeepFreshTokenService>(_i142.KeepFreshTokenService(
    tokenService: gh<_i143.TokenRepository>(),
    keepFreshTokenProvider: gh<_i133.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i144.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i131.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i145.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i143.EndUserRepository>(),
  ));
  gh.singleton<_i146.PostService>(_i146.PostService(
    keepFreshTokenService: gh<_i142.KeepFreshTokenService>(),
    postProvider: gh<_i136.PostProvider>(),
    postRepository: gh<_i143.PostRepository>(),
    commentRepository: gh<_i143.CommentRepository>(),
  ));
  gh.singleton<_i147.UserInfoService>(_i147.UserInfoService(
    keepFreshTokenService: gh<_i142.KeepFreshTokenService>(),
    userInfoProvider: gh<_i96.UserInfoProvider>(),
  ));
  gh.singleton<_i148.UserService>(_i148.UserService(
    keepFreshTokenService: gh<_i142.KeepFreshTokenService>(),
    userProvider: gh<_i102.UserProvider>(),
    endUserRepository: gh<_i143.EndUserRepository>(),
    staffUserRepository: gh<_i143.StaffUserRepository>(),
  ));
  gh.singleton<_i149.AccountService>(
    _i149.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i105.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i143.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i150.AuthService>(
    () {
      final i = _i150.AuthService(
        serverAvailabilityProvider: gh<_i145.ServerAvailabilityProvider>(),
        authProvider: gh<_i108.AuthProvider>(),
        tokenService: gh<_i143.TokenRepository>(),
        endUserRepository: gh<_i143.EndUserRepository>(),
        authExceptionProvider: gh<_i151.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i144.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i142.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i152.CategoryService>(_i152.CategoryService(
    keepFreshTokenService: gh<_i142.KeepFreshTokenService>(),
    feedProvider: gh<_i123.FeedProvider>(),
  ));
  gh.singleton<_i153.CommentService>(_i153.CommentService(
    keepFreshTokenService: gh<_i57.KeepFreshTokenService>(),
    commentProvider: gh<_i116.CommentProvider>(),
    commentRepository: gh<_i143.CommentRepository>(),
  ));
  gh.singleton<_i154.FeedService>(_i154.FeedService(
    keepFreshTokenService: gh<_i57.KeepFreshTokenService>(),
    feedProvider: gh<_i123.FeedProvider>(),
    postRepository: gh<_i143.PostRepository>(),
  ));
  gh.singleton<_i155.FriendsService>(_i155.FriendsService(
    keepFreshTokenService: gh<_i142.KeepFreshTokenService>(),
    friendsProvider: gh<_i127.FriendsProvider>(),
    endUserRepository: gh<_i21.EndUserRepository>(),
  ));
  gh.singleton<_i156.GoRouter>(routerModule.router(
    gh<_i26.GlobalKey<_i26.NavigatorState>>(),
    gh<_i157.AuthService>(),
  ));
  gh.singleton<_i158.HomeCoordinator>(
    _i159.ProdHomeCoordinator(goRouter: gh<_i156.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i160.HomeStore>(
      () => _i160.HomeStore(homeCoordinator: gh<_i158.HomeCoordinator>()));
  gh.singleton<_i157.LogInCoordinator>(
    _i161.ProdLogInCoordinator(
      goRouter: gh<_i156.GoRouter>(),
      authStatusProvider: gh<_i157.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i162.LogInStore>(() => _i162.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i163.LogInCoordinator>(),
        logInStringProvider: gh<_i67.LogInStringProvider>(),
      ));
  gh.singleton<_i157.MenuCoordinator>(
      _i164.ProdMenuCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.singleton<_i165.MenuStore>(_i165.MenuStore(
    menuCoordinator: gh<_i166.MenuCoordinator>(),
    menuStringProvider: gh<_i71.MenuStringProvider>(),
    endUserRepository: gh<_i143.EndUserRepository>(),
  ));
  gh.singleton<_i157.PostCoordinator>(
      _i167.ProdPostCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.singleton<_i157.RegisterCoordinator>(
    _i168.ProdRegisterCoordinator(
      goRouter: gh<_i156.GoRouter>(),
      authStatusProvider: gh<_i157.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i169.RegisterStore>(() => _i169.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i170.RegisterCoordinator>(),
        registerStringProvider: gh<_i80.RegisterStringProvider>(),
      ));
  gh.singleton<_i157.RulesCoordinator>(
      _i171.ProdRulesCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.factory<_i172.RulesStore>(() => _i172.RulesStore(
        rulesService: gh<_i140.RulesService>(),
        rulesCoordinator: gh<_i173.RulesCoordinator>(),
        rulesStringProvider: gh<_i82.RulesStringProvider>(),
      ));
  gh.singleton<_i157.SettingsCoordinator>(
      _i174.ProdSettingsCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.singleton<_i175.SettingsStore>(_i175.SettingsStore(
    authService: gh<_i57.AuthService>(),
    settingsCoordinator: gh<_i176.SettingsCoordinator>(),
    settingsStringProvider: gh<_i88.SettingsStringProvider>(),
    accountService: gh<_i149.AccountService>(),
    mapster: gh<_i70.Mapster>(),
  ));
  gh.singleton<_i177.UserWallCoordinator>(
      _i178.ProdUserWallCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.singleton<_i157.AccountSettingsCoordinator>(
      _i179.ProdAccountSettingsCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.factory<_i180.AccountSettingsStore>(() => _i180.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i181.AccountSettingsCoordinator>()));
  gh.singleton<_i157.ChangePersonalInfoCoordinator>(
      _i182.ProdChangePersonalInfoCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.factory<_i183.ChangePersonalInfoStore>(() => _i183.ChangePersonalInfoStore(
        accountService: gh<_i184.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i185.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i114.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i157.CommentCoordinator>(
      _i186.ProdCommentCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.factory<_i187.CommentReplyStore>(() => _i187.CommentReplyStore(
        commentService: gh<_i188.CommentService>(),
        userService: gh<_i57.UserService>(),
        commentCoordinator: gh<_i189.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i118.CommentReplyStringProvider>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.factory<_i190.CommentStore>(() => _i190.CommentStore(
        commentReplyStore: gh<_i187.CommentReplyStore>(),
        commentService: gh<_i188.CommentService>(),
        userService: gh<_i57.UserService>(),
        commentCoordinator: gh<_i189.CommentCoordinator>(),
        commentStringProvider: gh<_i120.CommentStringProvider>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.singleton<_i191.DevicesCoordinator>(
      _i192.ProdDevicesCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.singleton<_i193.DevicesStore>(_i193.DevicesStore(
    devicesCoordinator: gh<_i191.DevicesCoordinator>(),
    accountService: gh<_i149.AccountService>(),
    mapster: gh<_i70.Mapster>(),
  ));
  gh.singleton<_i157.FeedCoordinator>(
      _i194.ProdFeedCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.factory<_i195.FeedStore>(() => _i195.FeedStore(
        feedService: gh<_i154.FeedService>(),
        userService: gh<_i8.UserService>(),
        postService: gh<_i8.PostService>(),
        feedCoordinator: gh<_i196.FeedCoordinator>(),
        feedStringProvider: gh<_i125.FeedStringProvider>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.singleton<_i197.FriendsCoordinator>(
      _i198.ProdFriendsCoordinator(goRouter: gh<_i156.GoRouter>()));
  gh.factory<_i199.FriendsStore>(() => _i199.FriendsStore(
        friendsService: gh<_i155.FriendsService>(),
        friendsStringProvider: gh<_i129.FriendsStringProvider>(),
        coordinator: gh<_i197.FriendsCoordinator>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.factory<_i200.PostCommentStore>(() => _i200.PostCommentStore(
        commentService: gh<_i188.CommentService>(),
        userService: gh<_i57.UserService>(),
        commentCoordinator: gh<_i189.CommentCoordinator>(),
        postCommentStringProvider: gh<_i73.PostCommentStringProvider>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.factory<_i201.PostStore>(() => _i201.PostStore(
        postCommentStore: gh<_i200.PostCommentStore>(),
        postService: gh<_i57.PostService>(),
        userService: gh<_i57.UserService>(),
        postCoordinator: gh<_i202.PostCoordinator>(),
        postStringProvider: gh<_i78.PostStringProvider>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.factory<_i203.UserPostsStore>(() => _i203.UserPostsStore(
        postService: gh<_i146.PostService>(),
        userService: gh<_i148.UserService>(),
        coordinator: gh<_i177.UserWallCoordinator>(),
        userPostsStringProvider: gh<_i100.UserPostsStringProvider>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
        mapster: gh<_i70.Mapster>(),
      ));
  gh.singleton<_i204.CategoryStore>(_i204.CategoryStore(
    feedStore: gh<_i195.FeedStore>(),
    categoryService: gh<_i152.CategoryService>(),
    categoryStringProvider: gh<_i112.CategoryStringProvider>(),
  ));
  gh.factory<_i205.UserInfoStore>(() => _i205.UserInfoStore(
        userPostsStore: gh<_i203.UserPostsStore>(),
        userInfoService: gh<_i147.UserInfoService>(),
        userInfoStringProvider: gh<_i98.UserInfoStringProvider>(),
        coordinator: gh<_i206.UserWallCoordinator>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
        mapster: gh<_i70.Mapster>(),
      ));
  return getIt;
}

class _$EnvModule extends _i207.EnvModule {}

class _$RouterModule extends _i208.RouterModule {}

class _$DeviceInfoPlusModule extends _i209.DeviceInfoPlusModule {}

class _$DioModule extends _i210.DioModule {}

class _$MapsterModule extends _i211.MapsterModule {}

class _$SecureStorageModule extends _i212.SecureStorageModule {}

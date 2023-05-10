// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i15;
import 'package:dio/dio.dart' as _i18;
import 'package:flutter/material.dart' as _i24;
import 'package:flutter/widgets.dart' as _i75;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i21;
import 'package:freezed_annotation/freezed_annotation.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i179;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i187;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i197;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i200;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i73;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i89;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i91;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i186;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i196;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i199;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i26;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i156;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i158;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i74;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i90;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i92;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i157;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i27;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i9;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i8;
import 'package:itrust/features/chat_list/application/coordinators/chat_list_coordinator.dart'
    as _i214;
import 'package:itrust/features/chat_list/application/coordinators/create_monologue_coordinator.dart'
    as _i222;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i216;
import 'package:itrust/features/chat_list/application/stores/create_monologue/create_monologue_store.dart'
    as _i224;
import 'package:itrust/features/chat_list/domain/providers/create_monologue_provider.dart'
    as _i135;
import 'package:itrust/features/chat_list/domain/providers/create_monologue_string_provider.dart'
    as _i137;
import 'package:itrust/features/chat_list/domain/services/create_monologue_service.dart'
    as _i176;
import 'package:itrust/features/chat_list/infrastructure/app_providers/create_monologue_string_provider.dart'
    as _i138;
import 'package:itrust/features/chat_list/infrastructure/domain_providers/create_monologue_provider/create_monologue_provider.dart'
    as _i136;
import 'package:itrust/features/common/application/application.dart' as _i101;
import 'package:itrust/features/common/application/providers/beautified_number_provider.dart'
    as _i236;
import 'package:itrust/features/common/application/providers/chat_list_string_provider.dart'
    as _i126;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i13;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i22;
import 'package:itrust/features/common/common.dart' as _i63;
import 'package:itrust/features/common/domain/domain.dart' as _i16;
import 'package:itrust/features/common/domain/dto/chat_response/chat_response.dart'
    as _i69;
import 'package:itrust/features/common/domain/dto/chats_response/chats_response.dart'
    as _i34;
import 'package:itrust/features/common/domain/dto/end_users_response/end_users_response.dart'
    as _i36;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i44;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i46;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i54;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i67;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i28;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i65;
import 'package:itrust/features/common/domain/dto/posts_response/posts_response.dart'
    as _i56;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i61;
import 'package:itrust/features/common/domain/dto/user_info_response/user_info_response.dart'
    as _i52;
import 'package:itrust/features/common/domain/dto/users_response/users_response.dart'
    as _i58;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i50;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i172;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i116;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/chat_list_provider.dart'
    as _i124;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i162;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i147;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i149;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i154;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i163;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i93;
import 'package:itrust/features/common/domain/providers/user_info_provider.dart'
    as _i105;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i111;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i171;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i174;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i160;
import 'package:itrust/features/common/domain/services/message_service.dart'
    as _i79;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i165;
import 'package:itrust/features/common/domain/services/user_info_service.dart'
    as _i167;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i168;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i119;
import 'package:itrust/features/common/infrastructure/app_providers/chat_list_string_provider.dart'
    as _i127;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i14;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i23;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i102;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i115;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i117;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/chat_list_provider/chat_list_provider.dart'
    as _i125;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i148;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i150;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i155;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i159;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i94;
import 'package:itrust/features/common/infrastructure/domain_providers/user_info_provider/user_info_provider.dart'
    as _i106;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i112;
import 'package:itrust/features/common/infrastructure/json_converters/chat_response_json_converter.dart'
    as _i70;
import 'package:itrust/features/common/infrastructure/json_converters/chats_response_json_converter.dart'
    as _i35;
import 'package:itrust/features/common/infrastructure/json_converters/end_users_response_json_converter.dart'
    as _i37;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i55;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i68;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i66;
import 'package:itrust/features/common/infrastructure/json_converters/posts_response_json_converter.dart'
    as _i57;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i64;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i62;
import 'package:itrust/features/common/infrastructure/json_converters/user_info_response_json_converter.dart'
    as _i53;
import 'package:itrust/features/common/infrastructure/json_converters/users_response_json_converter.dart'
    as _i59;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i51;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i151;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i134;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i12;
import 'package:itrust/features/features.dart' as _i180;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i230;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i120;
import 'package:itrust/features/feed/application/providers/feed_string_provider.dart'
    as _i141;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i241;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i229;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i32;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i139;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i173;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i177;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i121;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i142;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i140;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i33;
import 'package:itrust/features/friend_bids/application/coordinators/friend_bids_coordinator.dart'
    as _i231;
import 'package:itrust/features/friend_bids/application/providers/friend_bids_string_provider.dart'
    as _i145;
import 'package:itrust/features/friend_bids/application/stores/friend_bids/friend_bids_store.dart'
    as _i233;
import 'package:itrust/features/friend_bids/application/stores/inbox_friend_bids/inbox_friend_bids_store.dart'
    as _i184;
import 'package:itrust/features/friend_bids/application/stores/outbox_friend_bids/outbox_friend_bids_store.dart'
    as _i191;
import 'package:itrust/features/friend_bids/domain/dto/friend_bids_amount_response/friend_bids_amount_response.dart'
    as _i38;
import 'package:itrust/features/friend_bids/domain/providers/friend_bids_provider.dart'
    as _i143;
import 'package:itrust/features/friend_bids/domain/services/friend_bids_service.dart'
    as _i178;
import 'package:itrust/features/friend_bids/infrastructure/app_providers/friend_bids_string_provider.dart'
    as _i146;
import 'package:itrust/features/friend_bids/infrastructure/domain_providers/friend_bids_provider/friend_bids_provider.dart'
    as _i144;
import 'package:itrust/features/friend_bids/infrastructure/json_converters/friend_bids_amount_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i72;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i71;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i190;
import 'package:itrust/features/menu/application/providers/menu_string_provider.dart'
    as _i77;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i189;
import 'package:itrust/features/menu/infrastructure/app_providers/menu_string_provider.dart'
    as _i78;
import 'package:itrust/features/people/application/coordinators/people_coordinator.dart'
    as _i192;
import 'package:itrust/features/people/application/providers/people_string_provider.dart'
    as _i80;
import 'package:itrust/features/people/application/stores/all_users/all_users_store.dart'
    as _i170;
import 'package:itrust/features/people/application/stores/friends/friends_store.dart'
    as _i234;
import 'package:itrust/features/people/application/stores/people/people_store.dart'
    as _i235;
import 'package:itrust/features/people/application/stores/subscribers/subscribers_store.dart'
    as _i204;
import 'package:itrust/features/people/application/stores/subscriptions/subscriptions_store.dart'
    as _i166;
import 'package:itrust/features/people/domain/dto/people_amount_response/people_amount_response.dart'
    as _i48;
import 'package:itrust/features/people/domain/providers/people_provider.dart'
    as _i152;
import 'package:itrust/features/people/domain/services/people_service.dart'
    as _i164;
import 'package:itrust/features/people/infrastructure/app_providers/people_string_provider.dart'
    as _i81;
import 'package:itrust/features/people/infrastructure/domain_providers/people_provider/people_provider.dart'
    as _i153;
import 'package:itrust/features/people/infrastructure/json_converters/people_amount_response_json_converter.dart'
    as _i49;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i220;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i239;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i130;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i132;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i82;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i87;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i221;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i218;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i238;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i237;
import 'package:itrust/features/post/domain/domain.dart' as _i219;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i128;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i175;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i131;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i133;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i83;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i88;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i129;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i84;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i209;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i213;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i225;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i203;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i122;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i97;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i208;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i211;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i227;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i202;
import 'package:itrust/features/settings/domain/domain.dart' as _i212;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i42;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i40;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i113;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i169;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i123;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i98;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i114;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i43;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i96;
import 'package:itrust/features/user_wall/application/coordinators/coordinators.dart'
    as _i243;
import 'package:itrust/features/user_wall/application/coordinators/user_wall_coordinator.dart'
    as _i205;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i107;
import 'package:itrust/features/user_wall/application/providers/user_posts_string_provider.dart'
    as _i109;
import 'package:itrust/features/user_wall/application/stores/user_info/user_info_store.dart'
    as _i242;
import 'package:itrust/features/user_wall/application/stores/user_posts/user_posts_store.dart'
    as _i240;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i108;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_posts_string_provider.dart'
    as _i110;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i181;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i183;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i207;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i210;
import 'package:itrust/main/infrastructure/coordinators/chat_list_coordinator.dart'
    as _i215;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i217;
import 'package:itrust/main/infrastructure/coordinators/create_monologue_coordinator.dart'
    as _i223;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i226;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i228;
import 'package:itrust/main/infrastructure/coordinators/friend_bids_coordinator.dart'
    as _i232;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i182;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i185;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i188;
import 'package:itrust/main/infrastructure/coordinators/people_coordinator.dart'
    as _i193;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i194;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i195;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i198;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i201;
import 'package:itrust/main/infrastructure/coordinators/user_wall_coordinator.dart'
    as _i206;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i31;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i7;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i11;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i20;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i86;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i100;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i104;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i6;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i10;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i19;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i161;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i85;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i99;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i103;
import 'package:itrust/utils/server_settings.dart' as _i95;
import 'package:itrust/utils/utils.dart' as _i118;
import 'package:json_annotation/json_annotation.dart' as _i60;
import 'package:mapster/mapster.dart' as _i76;
import 'package:problem_details/problem_details.dart' as _i30;

import '../../../env/env_module.dart' as _i244;
import '../router/router.dart' as _i245;
import '../third_party/device_info_plus_module.dart' as _i246;
import '../third_party/dio_module.dart' as _i247;
import '../third_party/mapster_module.dart' as _i248;
import '../third_party/secure_storage_module.dart' as _i249;

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
  gh.lazySingleton<_i6.ChatRepository>(
    () => _i7.DevChatRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.ChatService>(_i8.ChatService());
  gh.factory<_i9.ChatStore>(
      () => _i9.ChatStore(chatService: gh<_i8.ChatService>()));
  gh.singleton<_i10.CommentRepository>(
    _i11.DevCommentRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i12.ConnectionStore>(() => _i12.ConnectionStore());
  gh.singleton<_i13.DateTimeProvider>(_i14.ProdDateTimeProvider());
  gh.singleton<_i15.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i16.DeviceInfoProvider>(_i17.ProdDeviceInfoProvider(
      deviceInfoPlugin: gh<_i15.DeviceInfoPlugin>()));
  gh.singleton<_i18.Dio>(dioModule.dio);
  await gh.singletonAsync<_i19.EndUserRepository>(
    () {
      final i = _i20.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i21.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i22.FormattedDateProvider>(_i23.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i13.DateTimeProvider>()));
  gh.singleton<_i24.GlobalKey<_i24.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i25.JsonConverter<_i26.RulesResponse, Map<String, Object?>>>(
      _i27.RulesResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i28.PostCommentsResponse, Map<String, Object?>>>(
      _i29.PostCommentsResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i30.ProblemDetails, Map<String, Object?>>>(
      _i31.ProblemDetailsJsonConverter());
  gh.singleton<_i25.JsonConverter<_i32.GetTagsResponse, Map<String, Object?>>>(
      _i33.GetTagsResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i34.ChatsResponse, Map<String, Object?>>>(
      _i35.ChatsResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i36.EndUsersResponse, Map<String, Object?>>>(
      _i37.EndUsersResponseJsonConverter());
  gh.singleton<
      _i25.JsonConverter<_i38.FriendBidsAmountResponse,
          Map<String, Object?>>>(_i39.FriendBidsAmountResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i40.GetDevicesResponse, Map<String, Object?>>>(
      _i41.GetDevicesResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i42.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i43.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i44.GetUserByIDResponse, Map<String, Object?>>>(
      _i45.GetUserByIDResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i46.LogInResponse, Map<String, Object?>>>(
      _i47.LogInResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i48.PeopleAmountResponse, Map<String, Object?>>>(
      _i49.PeopleAmountResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i50.VerifyTokenResponse, Map<String, Object?>>>(
      _i51.VerifyTokenResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i52.UserInfoResponse, Map<String, Object?>>>(
      _i53.UserInfoResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i54.LogOutResponse, Map<String, Object?>>>(
      _i55.LogOutResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i56.PostsResponse, Map<String, Object?>>>(
      _i57.PostsResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i58.UsersResponse, Map<String, Object?>>>(
      _i59.UsersResponseJsonConverter());
  gh.singleton<_i60.JsonConverter<_i61.RegisterResponse, Map<String, Object?>>>(
      _i62.RegisterResponseJsonConverter());
  gh.singleton<
          _i60.JsonConverter<_i63.RefreshTokenResponse, Map<String, Object?>>>(
      _i64.RefreshTokenResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i65.PostResponse, Map<String, Object?>>>(
      _i66.PostResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i67.PostCommentResponse, Map<String, Object?>>>(
      _i68.PostCommentResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i69.ChatResponse, Map<String, Object?>>>(
      _i70.ChatResponseJsonConverter());
  gh.singleton<_i71.LockService>(_i71.LockService());
  gh.factory<_i72.LockStore>(
      () => _i72.LockStore(lockService: gh<_i71.LockService>()));
  gh.singleton<_i73.LogInStringProvider>(_i74.ProdLogInStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i76.Mapster>(mapsterModule.mapster);
  gh.singleton<_i77.MenuStringProvider>(_i78.ProdMenuStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i79.MessageService>(_i79.MessageService());
  gh.singleton<_i80.PeopleStringProvider>(_i81.ProdPeopleStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i82.PostCommentStringProvider>(
      _i83.ProdPostCommentStringProvider(
          navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i84.PostMapsterRegistrar>(
      _i84.PostMapsterRegistrar(gh<_i76.Mapster>())..register());
  gh.singleton<_i85.PostRepository>(
    _i86.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i87.PostStringProvider>(_i88.ProdPostStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i89.RegisterStringProvider>(_i90.ProdRegisterStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i91.RulesStringProvider>(_i92.ProdRulesStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  await gh.singletonAsync<_i93.ServerExceptionProvider>(
    () => _i94.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i95.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i96.SettingsMapsterRegistrar>(
      _i96.SettingsMapsterRegistrar(gh<_i76.Mapster>())..register());
  gh.singleton<_i97.SettingsStringProvider>(_i98.ProdSettingsStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i99.StaffUserRepository>(
    _i100.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i101.SuffixNumberProvider>(_i102.ProdSuffixNumberProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i103.TokenRepository>(_i104.ProdTokenRepository(
    dio: gh<_i18.Dio>(),
    secureStorage: gh<_i21.FlutterSecureStorage>(),
  ));
  gh.singleton<_i105.UserInfoProvider>(_i106.ProdUserInfoProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i107.UserInfoStringProvider>(_i108.ProdUserInfoStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i109.UserPostsStringProvider>(_i110.ProdUserPostsStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i111.UserProvider>(_i112.ProdUserProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i113.AccountProvider>(_i114.ProdAccountProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i16.AuthExceptionProvider>(
      _i115.ProdAuthExceptionProvider(gh<_i16.ServerExceptionProvider>()));
  gh.singleton<_i116.AuthProvider>(_i117.ProdAuthProvider(
    gh<_i18.Dio>(),
    gh<_i118.ServerSettings>(),
  ));
  gh.singleton<_i101.BeautifiedNumberProvider>(
      _i119.ProdBeautifiedNumberProvider(
          suffixNumberProvider: gh<_i101.SuffixNumberProvider>()));
  gh.singleton<_i120.CategoryStringProvider>(_i121.ProdCategoryStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i122.ChangePersonalInfoStringProvider>(
      _i123.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i124.ChatListProvider>(_i125.ProdChatListProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i126.ChatListStringProvider>(_i127.ProdChatListStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i128.CommentProvider>(_i129.ProdCommentProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i130.CommentReplyStringProvider>(
      _i131.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i132.CommentStringProvider>(_i133.ProdCommentStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i134.CommonMapsterRegistrar>(
      _i134.CommonMapsterRegistrar(gh<_i76.Mapster>())..register());
  gh.singleton<_i135.CreateMonologueProvider>(_i136.ProdCreateMonologueProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i137.CreateMonologueStringProvider>(
      _i138.ProdCreateMonologueStringProvider(
          navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i139.FeedProvider>(_i140.ProdFeedProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i141.FeedStringProvider>(_i142.ProdFeedStringProvider(
      navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i143.FriendBidsProvider>(_i144.ProdFriendBidsProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i145.FriendBidsStringProvider>(
      _i146.ProdFriendBidsStringProvider(
          navigatorKey: gh<_i75.GlobalKey<_i75.NavigatorState>>()));
  gh.singleton<_i147.KeepFreshTokenExceptionProvider>(
      _i148.ProdKeepFreshTokenExceptionProvider(
          gh<_i93.ServerExceptionProvider>()));
  gh.singleton<_i149.KeepFreshTokenProvider>(_i150.ProdKeepFreshTokenProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i151.MediaUrlCreator>(
      _i151.MediaUrlCreator(serverSettings: gh<_i95.ServerSettings>()));
  gh.singleton<_i152.PeopleProvider>(_i153.ProdPeopleProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i154.PostProvider>(_i155.ProdPostProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i156.RulesProvider>(_i157.ProdRulesProvider(
    gh<_i18.Dio>(),
    gh<_i95.ServerSettings>(),
  ));
  gh.singleton<_i158.RulesService>(
      _i158.RulesService(rulesProvider: gh<_i156.RulesProvider>()));
  gh.singleton<_i16.ServerAvailabilityProvider>(
      _i159.ProdServerAvailabilityProvider(gh<_i95.ServerSettings>()));
  gh.singleton<_i160.KeepFreshTokenService>(_i160.KeepFreshTokenService(
    tokenService: gh<_i161.TokenRepository>(),
    keepFreshTokenProvider: gh<_i149.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i162.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i147.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i163.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i161.EndUserRepository>(),
  ));
  gh.singleton<_i164.PeopleService>(_i164.PeopleService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    peopleProvider: gh<_i152.PeopleProvider>(),
    endUserRepository: gh<_i161.EndUserRepository>(),
    staffUserRepository: gh<_i161.StaffUserRepository>(),
  ));
  gh.singleton<_i165.PostService>(_i165.PostService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    postProvider: gh<_i154.PostProvider>(),
    postRepository: gh<_i161.PostRepository>(),
    commentRepository: gh<_i161.CommentRepository>(),
  ));
  gh.factory<_i166.SubscriptionsStore>(() => _i166.SubscriptionsStore(
        peopleService: gh<_i164.PeopleService>(),
        peopleStringProvider: gh<_i80.PeopleStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i167.UserInfoService>(_i167.UserInfoService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    userInfoProvider: gh<_i105.UserInfoProvider>(),
  ));
  gh.singleton<_i168.UserService>(_i168.UserService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    userProvider: gh<_i111.UserProvider>(),
    endUserRepository: gh<_i161.EndUserRepository>(),
    staffUserRepository: gh<_i161.StaffUserRepository>(),
  ));
  gh.singleton<_i169.AccountService>(
    _i169.AccountService(
      authStatusProvider: gh<_i16.AuthStatusProvider>(),
      userProvider: gh<_i16.UserProvider>(),
      accountProvider: gh<_i113.AccountProvider>(),
      keepFreshTokenService: gh<_i16.KeepFreshTokenService>(),
      endUserRepository: gh<_i161.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i170.AllUsersStore>(() => _i170.AllUsersStore(
        peopleService: gh<_i164.PeopleService>(),
        peopleStringProvider: gh<_i80.PeopleStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  await gh.singletonAsync<_i171.AuthService>(
    () {
      final i = _i171.AuthService(
        serverAvailabilityProvider: gh<_i163.ServerAvailabilityProvider>(),
        authProvider: gh<_i116.AuthProvider>(),
        tokenService: gh<_i161.TokenRepository>(),
        endUserRepository: gh<_i161.EndUserRepository>(),
        authExceptionProvider: gh<_i172.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i162.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i173.CategoryService>(_i173.CategoryService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    feedProvider: gh<_i139.FeedProvider>(),
  ));
  gh.singleton<_i174.ChatListService>(_i174.ChatListService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    chatListProvider: gh<_i124.ChatListProvider>(),
    chatRepository: gh<_i161.ChatRepository>(),
  ));
  gh.singleton<_i175.CommentService>(_i175.CommentService(
    keepFreshTokenService: gh<_i63.KeepFreshTokenService>(),
    commentProvider: gh<_i128.CommentProvider>(),
    commentRepository: gh<_i161.CommentRepository>(),
  ));
  gh.singleton<_i176.CreateMonologueService>(_i176.CreateMonologueService(
    keepFreshTokenService: gh<_i160.KeepFreshTokenService>(),
    createMonologueProvider: gh<_i135.CreateMonologueProvider>(),
    chatRepository: gh<_i161.ChatRepository>(),
  ));
  gh.singleton<_i177.FeedService>(_i177.FeedService(
    keepFreshTokenService: gh<_i63.KeepFreshTokenService>(),
    feedProvider: gh<_i139.FeedProvider>(),
    postRepository: gh<_i161.PostRepository>(),
  ));
  gh.singleton<_i178.FriendBidsService>(_i178.FriendBidsService(
    keepFreshTokenService: gh<_i16.KeepFreshTokenService>(),
    friendBidsProvider: gh<_i143.FriendBidsProvider>(),
    endUserRepository: gh<_i161.EndUserRepository>(),
  ));
  gh.singleton<_i179.GoRouter>(routerModule.router(
    gh<_i24.GlobalKey<_i24.NavigatorState>>(),
    gh<_i180.AuthService>(),
  ));
  gh.singleton<_i181.HomeCoordinator>(
    _i182.ProdHomeCoordinator(goRouter: gh<_i179.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i183.HomeStore>(
      () => _i183.HomeStore(homeCoordinator: gh<_i181.HomeCoordinator>()));
  gh.factory<_i184.InboxFriendBidsStore>(() => _i184.InboxFriendBidsStore(
        friendBidsService: gh<_i178.FriendBidsService>(),
        friendBidsStringProvider: gh<_i145.FriendBidsStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i180.LogInCoordinator>(
    _i185.ProdLogInCoordinator(
      goRouter: gh<_i179.GoRouter>(),
      authStatusProvider: gh<_i180.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i186.LogInStore>(() => _i186.LogInStore(
        authService: gh<_i16.AuthService>(),
        logInCoordinator: gh<_i187.LogInCoordinator>(),
        logInStringProvider: gh<_i73.LogInStringProvider>(),
      ));
  gh.singleton<_i180.MenuCoordinator>(
      _i188.ProdMenuCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i189.MenuStore>(_i189.MenuStore(
    menuCoordinator: gh<_i190.MenuCoordinator>(),
    menuStringProvider: gh<_i77.MenuStringProvider>(),
    endUserRepository: gh<_i161.EndUserRepository>(),
  ));
  gh.factory<_i191.OutboxFriendBidsStore>(() => _i191.OutboxFriendBidsStore(
        friendBidsService: gh<_i178.FriendBidsService>(),
        friendBidsStringProvider: gh<_i145.FriendBidsStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i192.PeopleCoordinator>(
      _i193.ProdPeopleCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i180.PostCoordinator>(
      _i194.ProdPostCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i180.RegisterCoordinator>(
    _i195.ProdRegisterCoordinator(
      goRouter: gh<_i179.GoRouter>(),
      authStatusProvider: gh<_i180.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i196.RegisterStore>(() => _i196.RegisterStore(
        authService: gh<_i16.AuthService>(),
        registerCoordinator: gh<_i197.RegisterCoordinator>(),
        registerStringProvider: gh<_i89.RegisterStringProvider>(),
      ));
  gh.singleton<_i180.RulesCoordinator>(
      _i198.ProdRulesCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i199.RulesStore>(() => _i199.RulesStore(
        rulesService: gh<_i158.RulesService>(),
        rulesCoordinator: gh<_i200.RulesCoordinator>(),
        rulesStringProvider: gh<_i91.RulesStringProvider>(),
      ));
  gh.singleton<_i180.SettingsCoordinator>(
      _i201.ProdSettingsCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i202.SettingsStore>(_i202.SettingsStore(
    authService: gh<_i63.AuthService>(),
    settingsCoordinator: gh<_i203.SettingsCoordinator>(),
    settingsStringProvider: gh<_i97.SettingsStringProvider>(),
    accountService: gh<_i169.AccountService>(),
    mapster: gh<_i76.Mapster>(),
  ));
  gh.factory<_i204.SubscribersStore>(() => _i204.SubscribersStore(
        peopleService: gh<_i164.PeopleService>(),
        peopleStringProvider: gh<_i80.PeopleStringProvider>(),
        coordinator: gh<_i192.PeopleCoordinator>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i205.UserWallCoordinator>(
      _i206.ProdUserWallCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i180.AccountSettingsCoordinator>(
      _i207.ProdAccountSettingsCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i208.AccountSettingsStore>(() => _i208.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i209.AccountSettingsCoordinator>()));
  gh.singleton<_i180.ChangePersonalInfoCoordinator>(
      _i210.ProdChangePersonalInfoCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i211.ChangePersonalInfoStore>(() => _i211.ChangePersonalInfoStore(
        accountService: gh<_i212.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i213.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i122.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i214.ChatListCoordinator>(
      _i215.ProdChatListCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i216.ChatListStore>(_i216.ChatListStore(
    chatListService: gh<_i16.ChatListService>(),
    messageService: gh<_i16.MessageService>(),
    userService: gh<_i16.UserService>(),
    endUserRepository: gh<_i161.EndUserRepository>(),
    coordinator: gh<_i214.ChatListCoordinator>(),
    chatListStringProvider: gh<_i101.ChatListStringProvider>(),
    mapster: gh<_i76.Mapster>(),
  ));
  gh.singleton<_i180.CommentCoordinator>(
      _i217.ProdCommentCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i218.CommentReplyStore>(() => _i218.CommentReplyStore(
        commentService: gh<_i219.CommentService>(),
        userService: gh<_i63.UserService>(),
        commentCoordinator: gh<_i220.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i130.CommentReplyStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.factory<_i221.CommentStore>(() => _i221.CommentStore(
        commentReplyStore: gh<_i218.CommentReplyStore>(),
        commentService: gh<_i219.CommentService>(),
        userService: gh<_i63.UserService>(),
        commentCoordinator: gh<_i220.CommentCoordinator>(),
        commentStringProvider: gh<_i132.CommentStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i222.CreateMonologueCoordinator>(
      _i223.ProdCreateMonologueCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i224.CreateMonologueStore>(() => _i224.CreateMonologueStore(
        createMonologueService: gh<_i176.CreateMonologueService>(),
        coordinator: gh<_i222.CreateMonologueCoordinator>(),
        createMonologueStringProvider:
            gh<_i137.CreateMonologueStringProvider>(),
      ));
  gh.singleton<_i225.DevicesCoordinator>(
      _i226.ProdDevicesCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.singleton<_i227.DevicesStore>(_i227.DevicesStore(
    devicesCoordinator: gh<_i225.DevicesCoordinator>(),
    accountService: gh<_i169.AccountService>(),
    mapster: gh<_i76.Mapster>(),
  ));
  gh.singleton<_i180.FeedCoordinator>(
      _i228.ProdFeedCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i229.FeedStore>(() => _i229.FeedStore(
        feedService: gh<_i177.FeedService>(),
        userService: gh<_i16.UserService>(),
        postService: gh<_i16.PostService>(),
        feedCoordinator: gh<_i230.FeedCoordinator>(),
        feedStringProvider: gh<_i141.FeedStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i231.FriendBidsCoordinator>(
      _i232.ProdFriendBidsCoordinator(goRouter: gh<_i179.GoRouter>()));
  gh.factory<_i233.FriendBidsStore>(() => _i233.FriendBidsStore(
        inboxStore: gh<_i184.InboxFriendBidsStore>(),
        outboxStore: gh<_i191.OutboxFriendBidsStore>(),
        friendBidsService: gh<_i178.FriendBidsService>(),
        userInfoService: gh<_i16.UserInfoService>(),
        friendBidsStringProvider: gh<_i145.FriendBidsStringProvider>(),
        beautifiedNumberProvider: gh<_i101.BeautifiedNumberProvider>(),
        coordinator: gh<_i231.FriendBidsCoordinator>(),
        endUserRepository: gh<_i161.EndUserRepository>(),
      ));
  gh.factory<_i234.FriendsStore>(() => _i234.FriendsStore(
        peopleService: gh<_i164.PeopleService>(),
        peopleStringProvider: gh<_i80.PeopleStringProvider>(),
        coordinator: gh<_i192.PeopleCoordinator>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.factory<_i235.PeopleStore>(() => _i235.PeopleStore(
        allUsersStore: gh<_i170.AllUsersStore>(),
        friendsStore: gh<_i234.FriendsStore>(),
        subscribersStore: gh<_i204.SubscribersStore>(),
        subscriptionsStore: gh<_i166.SubscriptionsStore>(),
        peopleService: gh<_i164.PeopleService>(),
        peopleStringProvider: gh<_i80.PeopleStringProvider>(),
        coordinator: gh<_i192.PeopleCoordinator>(),
        beautifiedNumberProvider: gh<_i236.BeautifiedNumberProvider>(),
        endUserRepository: gh<_i19.EndUserRepository>(),
      ));
  gh.factory<_i237.PostCommentStore>(() => _i237.PostCommentStore(
        commentService: gh<_i219.CommentService>(),
        userService: gh<_i63.UserService>(),
        commentCoordinator: gh<_i220.CommentCoordinator>(),
        postCommentStringProvider: gh<_i82.PostCommentStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.factory<_i238.PostStore>(() => _i238.PostStore(
        postCommentStore: gh<_i237.PostCommentStore>(),
        postService: gh<_i63.PostService>(),
        userService: gh<_i63.UserService>(),
        postCoordinator: gh<_i239.PostCoordinator>(),
        postStringProvider: gh<_i87.PostStringProvider>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.factory<_i240.UserPostsStore>(() => _i240.UserPostsStore(
        postService: gh<_i165.PostService>(),
        userService: gh<_i168.UserService>(),
        coordinator: gh<_i205.UserWallCoordinator>(),
        userPostsStringProvider: gh<_i109.UserPostsStringProvider>(),
        endUserRepository: gh<_i19.EndUserRepository>(),
        mapster: gh<_i76.Mapster>(),
      ));
  gh.singleton<_i241.CategoryStore>(_i241.CategoryStore(
    feedStore: gh<_i229.FeedStore>(),
    categoryService: gh<_i173.CategoryService>(),
    categoryStringProvider: gh<_i120.CategoryStringProvider>(),
  ));
  gh.factory<_i242.UserInfoStore>(() => _i242.UserInfoStore(
        userPostsStore: gh<_i240.UserPostsStore>(),
        userInfoService: gh<_i63.UserInfoService>(),
        userInfoStringProvider: gh<_i107.UserInfoStringProvider>(),
        coordinator: gh<_i243.UserWallCoordinator>(),
        endUserRepository: gh<_i19.EndUserRepository>(),
        mapster: gh<_i76.Mapster>(),
      ));
  return getIt;
}

class _$EnvModule extends _i244.EnvModule {}

class _$RouterModule extends _i245.RouterModule {}

class _$DeviceInfoPlusModule extends _i246.DeviceInfoPlusModule {}

class _$DioModule extends _i247.DioModule {}

class _$MapsterModule extends _i248.MapsterModule {}

class _$SecureStorageModule extends _i249.SecureStorageModule {}

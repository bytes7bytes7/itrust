// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i13;
import 'package:dio/dio.dart' as _i16;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter/widgets.dart' as _i81;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i19;
import 'package:freezed_annotation/freezed_annotation.dart' as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i200;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i208;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i218;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i221;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i79;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i96;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i98;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i207;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i217;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i220;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i28;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i175;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i177;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i80;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i97;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i99;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i176;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/chat/application/coordinators/chat_coordinator.dart'
    as _i235;
import 'package:itrust/features/chat/application/providers/chat_string_provider.dart'
    as _i139;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i240;
import 'package:itrust/features/chat/domain/dto/message_event_response/message_event_response.dart'
    as _i34;
import 'package:itrust/features/chat/domain/providers/chat_listen_provider.dart'
    as _i137;
import 'package:itrust/features/chat/domain/services/chat_service.dart'
    as _i195;
import 'package:itrust/features/chat/infrastructure/app_providers/chat_string_provider.dart'
    as _i140;
import 'package:itrust/features/chat/infrastructure/domain_providers/chat_listen_provider.dart'
    as _i138;
import 'package:itrust/features/chat/infrastructure/json_converters/message_event_response_json_converter.dart'
    as _i35;
import 'package:itrust/features/chat_list/application/coordinators/chat_list_coordinator.dart'
    as _i237;
import 'package:itrust/features/chat_list/application/coordinators/create_dialogue_coordinator.dart'
    as _i246;
import 'package:itrust/features/chat_list/application/coordinators/create_group_coordinator.dart'
    as _i249;
import 'package:itrust/features/chat_list/application/coordinators/create_monologue_coordinator.dart'
    as _i252;
import 'package:itrust/features/chat_list/application/providers/create_dialogue_string_provider.dart'
    as _i150;
import 'package:itrust/features/chat_list/application/providers/create_group_string_provider.dart'
    as _i152;
import 'package:itrust/features/chat_list/application/providers/create_monologue_string_provider.dart'
    as _i154;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i239;
import 'package:itrust/features/chat_list/application/stores/create_dialogue/create_dialogue_store.dart'
    as _i248;
import 'package:itrust/features/chat_list/application/stores/create_group/create_group_store.dart'
    as _i251;
import 'package:itrust/features/chat_list/application/stores/create_monologue/create_monologue_store.dart'
    as _i254;
import 'package:itrust/features/chat_list/domain/providers/create_chat_provider.dart'
    as _i148;
import 'package:itrust/features/chat_list/domain/services/create_chat_service.dart'
    as _i197;
import 'package:itrust/features/chat_list/infrastructure/app_providers/create_dialogue_string_provider.dart'
    as _i151;
import 'package:itrust/features/chat_list/infrastructure/app_providers/create_group_string_provider.dart'
    as _i153;
import 'package:itrust/features/chat_list/infrastructure/app_providers/create_monologue_string_provider.dart'
    as _i155;
import 'package:itrust/features/chat_list/infrastructure/domain_providers/create_chat_provider/create_chat_provider.dart'
    as _i149;
import 'package:itrust/features/common/application/application.dart' as _i108;
import 'package:itrust/features/common/application/providers/beautified_number_provider.dart'
    as _i266;
import 'package:itrust/features/common/application/providers/chat_list_string_provider.dart'
    as _i135;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i11;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i20;
import 'package:itrust/features/common/common.dart' as _i45;
import 'package:itrust/features/common/domain/domain.dart' as _i14;
import 'package:itrust/features/common/domain/dto/chat_event_response/chat_event_response.dart'
    as _i69;
import 'package:itrust/features/common/domain/dto/chat_response/chat_response.dart'
    as _i67;
import 'package:itrust/features/common/domain/dto/chats_response/chats_response.dart'
    as _i71;
import 'package:itrust/features/common/domain/dto/end_users_response/end_users_response.dart'
    as _i65;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i63;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i61;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i59;
import 'package:itrust/features/common/domain/dto/message_response/message_response.dart'
    as _i57;
import 'package:itrust/features/common/domain/dto/messages_response/messages_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i49;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i51;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i47;
import 'package:itrust/features/common/domain/dto/posts_response/posts_response.dart'
    as _i55;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i43;
import 'package:itrust/features/common/domain/dto/user_info_response/user_info_response.dart'
    as _i38;
import 'package:itrust/features/common/domain/dto/users_response/users_response.dart'
    as _i40;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i36;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i192;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i123;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/chat_list_listen_provider.dart'
    as _i131;
import 'package:itrust/features/common/domain/providers/chat_list_provider.dart'
    as _i133;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i181;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i164;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i166;
import 'package:itrust/features/common/domain/providers/message_provider.dart'
    as _i169;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i173;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i182;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i100;
import 'package:itrust/features/common/domain/providers/user_info_provider.dart'
    as _i112;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i118;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i191;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i194;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i179;
import 'package:itrust/features/common/domain/services/message_service.dart'
    as _i183;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i185;
import 'package:itrust/features/common/domain/services/user_info_service.dart'
    as _i187;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i188;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i126;
import 'package:itrust/features/common/infrastructure/app_providers/chat_list_string_provider.dart'
    as _i136;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i12;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i21;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i109;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i122;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i124;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/chat_list_listen_provider.dart'
    as _i132;
import 'package:itrust/features/common/infrastructure/domain_providers/chat_list_provider/chat_list_provider.dart'
    as _i134;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i15;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i165;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i167;
import 'package:itrust/features/common/infrastructure/domain_providers/message_provider/message_provider.dart'
    as _i170;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i174;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i178;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i101;
import 'package:itrust/features/common/infrastructure/domain_providers/user_info_provider/user_info_provider.dart'
    as _i113;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i119;
import 'package:itrust/features/common/infrastructure/json_converters/chat_event_response_json_converter.dart'
    as _i70;
import 'package:itrust/features/common/infrastructure/json_converters/chat_response_json_converter.dart'
    as _i68;
import 'package:itrust/features/common/infrastructure/json_converters/chats_response_json_converter.dart'
    as _i72;
import 'package:itrust/features/common/infrastructure/json_converters/end_users_response_json_converter.dart'
    as _i66;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i64;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i62;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i60;
import 'package:itrust/features/common/infrastructure/json_converters/message_response_json_converter.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/json_converters/messages_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i50;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i52;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i48;
import 'package:itrust/features/common/infrastructure/json_converters/posts_response_json_converter.dart'
    as _i56;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i46;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i44;
import 'package:itrust/features/common/infrastructure/json_converters/user_info_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/common/infrastructure/json_converters/users_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i37;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i168;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i147;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i10;
import 'package:itrust/features/features.dart' as _i201;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i260;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i127;
import 'package:itrust/features/feed/application/providers/feed_string_provider.dart'
    as _i158;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i271;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i259;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i24;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i156;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i193;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i198;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i128;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i159;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i157;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i25;
import 'package:itrust/features/friend_bids/application/coordinators/friend_bids_coordinator.dart'
    as _i261;
import 'package:itrust/features/friend_bids/application/providers/friend_bids_string_provider.dart'
    as _i162;
import 'package:itrust/features/friend_bids/application/stores/friend_bids/friend_bids_store.dart'
    as _i263;
import 'package:itrust/features/friend_bids/application/stores/inbox_friend_bids/inbox_friend_bids_store.dart'
    as _i205;
import 'package:itrust/features/friend_bids/application/stores/outbox_friend_bids/outbox_friend_bids_store.dart'
    as _i212;
import 'package:itrust/features/friend_bids/domain/dto/friend_bids_amount_response/friend_bids_amount_response.dart'
    as _i26;
import 'package:itrust/features/friend_bids/domain/providers/friend_bids_provider.dart'
    as _i160;
import 'package:itrust/features/friend_bids/domain/services/friend_bids_service.dart'
    as _i199;
import 'package:itrust/features/friend_bids/infrastructure/app_providers/friend_bids_string_provider.dart'
    as _i163;
import 'package:itrust/features/friend_bids/infrastructure/domain_providers/friend_bids_provider/friend_bids_provider.dart'
    as _i161;
import 'package:itrust/features/friend_bids/infrastructure/json_converters/friend_bids_amount_response_json_converter.dart'
    as _i27;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i78;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i77;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i211;
import 'package:itrust/features/menu/application/providers/menu_string_provider.dart'
    as _i83;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i210;
import 'package:itrust/features/menu/infrastructure/app_providers/menu_string_provider.dart'
    as _i84;
import 'package:itrust/features/people/application/coordinators/people_coordinator.dart'
    as _i213;
import 'package:itrust/features/people/application/providers/people_string_provider.dart'
    as _i87;
import 'package:itrust/features/people/application/stores/all_users/all_users_store.dart'
    as _i190;
import 'package:itrust/features/people/application/stores/friends/friends_store.dart'
    as _i264;
import 'package:itrust/features/people/application/stores/people/people_store.dart'
    as _i265;
import 'package:itrust/features/people/application/stores/subscribers/subscribers_store.dart'
    as _i225;
import 'package:itrust/features/people/application/stores/subscriptions/subscriptions_store.dart'
    as _i186;
import 'package:itrust/features/people/domain/dto/people_amount_response/people_amount_response.dart'
    as _i53;
import 'package:itrust/features/people/domain/providers/people_provider.dart'
    as _i171;
import 'package:itrust/features/people/domain/services/people_service.dart'
    as _i184;
import 'package:itrust/features/people/infrastructure/app_providers/people_string_provider.dart'
    as _i88;
import 'package:itrust/features/people/infrastructure/domain_providers/people_provider/people_provider.dart'
    as _i172;
import 'package:itrust/features/people/infrastructure/json_converters/people_amount_response_json_converter.dart'
    as _i54;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i244;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i269;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i143;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i145;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i89;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i94;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i245;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i242;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i268;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i267;
import 'package:itrust/features/post/domain/domain.dart' as _i243;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i141;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i196;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i144;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i146;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i90;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i95;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i142;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i91;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i230;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i234;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i255;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i224;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i129;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i104;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i229;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i232;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i257;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i223;
import 'package:itrust/features/settings/domain/domain.dart' as _i233;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i75;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i73;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i120;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i189;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i130;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i105;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i121;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i76;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i74;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i103;
import 'package:itrust/features/user_wall/application/coordinators/coordinators.dart'
    as _i273;
import 'package:itrust/features/user_wall/application/coordinators/user_wall_coordinator.dart'
    as _i226;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i114;
import 'package:itrust/features/user_wall/application/providers/user_posts_string_provider.dart'
    as _i116;
import 'package:itrust/features/user_wall/application/stores/user_info/user_info_store.dart'
    as _i272;
import 'package:itrust/features/user_wall/application/stores/user_posts/user_posts_store.dart'
    as _i270;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i115;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_posts_string_provider.dart'
    as _i117;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i202;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i204;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i228;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i231;
import 'package:itrust/main/infrastructure/coordinators/chat_coordinator.dart'
    as _i236;
import 'package:itrust/main/infrastructure/coordinators/chat_list_coordinator.dart'
    as _i238;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i241;
import 'package:itrust/main/infrastructure/coordinators/create_dialogue_coordinator.dart'
    as _i247;
import 'package:itrust/main/infrastructure/coordinators/create_group_coordinator.dart'
    as _i250;
import 'package:itrust/main/infrastructure/coordinators/create_monologue_coordinator.dart'
    as _i253;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i256;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i258;
import 'package:itrust/main/infrastructure/coordinators/friend_bids_coordinator.dart'
    as _i262;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i203;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i206;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i209;
import 'package:itrust/main/infrastructure/coordinators/people_coordinator.dart'
    as _i214;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i215;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i216;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i219;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i222;
import 'package:itrust/main/infrastructure/coordinators/user_wall_coordinator.dart'
    as _i227;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i33;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i7;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i9;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i18;
import 'package:itrust/repositories/implementations/message_repository.dart'
    as _i86;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i93;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i107;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i111;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i6;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i8;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i17;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i180;
import 'package:itrust/repositories/interfaces/message_repository.dart' as _i85;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i92;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i106;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i110;
import 'package:itrust/utils/server_settings.dart' as _i102;
import 'package:itrust/utils/utils.dart' as _i125;
import 'package:json_annotation/json_annotation.dart' as _i42;
import 'package:mapster/mapster.dart' as _i82;
import 'package:problem_details/problem_details.dart' as _i32;

import '../../../env/env_module.dart' as _i274;
import '../router/router.dart' as _i275;
import '../third_party/device_info_plus_module.dart' as _i276;
import '../third_party/dio_module.dart' as _i277;
import '../third_party/mapster_module.dart' as _i278;
import '../third_party/secure_storage_module.dart' as _i279;

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
  gh.singleton<_i6.ChatRepository>(
    _i7.DevChatRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.CommentRepository>(
    _i9.DevCommentRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i10.ConnectionStore>(() => _i10.ConnectionStore());
  gh.singleton<_i11.DateTimeProvider>(_i12.ProdDateTimeProvider());
  gh.singleton<_i13.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i14.DeviceInfoProvider>(_i15.ProdDeviceInfoProvider(
      deviceInfoPlugin: gh<_i13.DeviceInfoPlugin>()));
  gh.singleton<_i16.Dio>(dioModule.dio);
  await gh.singletonAsync<_i17.EndUserRepository>(
    () {
      final i = _i18.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i19.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i20.FormattedDateProvider>(_i21.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i11.DateTimeProvider>()));
  gh.singleton<_i22.GlobalKey<_i22.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i23.JsonConverter<_i24.GetTagsResponse, Map<String, Object?>>>(
      _i25.GetTagsResponseJsonConverter());
  gh.singleton<
      _i23.JsonConverter<_i26.FriendBidsAmountResponse,
          Map<String, Object?>>>(_i27.FriendBidsAmountResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i28.RulesResponse, Map<String, Object?>>>(
      _i29.RulesResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i30.MessagesResponse, Map<String, Object?>>>(
      _i31.MessagesResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i32.ProblemDetails, Map<String, Object?>>>(
      _i33.ProblemDetailsJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i34.MessageEventResponse, Map<String, Object?>>>(
      _i35.MessageEventResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i36.VerifyTokenResponse, Map<String, Object?>>>(
      _i37.VerifyTokenResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i38.UserInfoResponse, Map<String, Object?>>>(
      _i39.UserInfoResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i40.UsersResponse, Map<String, Object?>>>(
      _i41.UsersResponseJsonConverter());
  gh.singleton<_i42.JsonConverter<_i43.RegisterResponse, Map<String, Object?>>>(
      _i44.RegisterResponseJsonConverter());
  gh.singleton<
          _i42.JsonConverter<_i45.RefreshTokenResponse, Map<String, Object?>>>(
      _i46.RefreshTokenResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i47.PostResponse, Map<String, Object?>>>(
      _i48.PostResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i49.PostCommentResponse, Map<String, Object?>>>(
      _i50.PostCommentResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i51.PostCommentsResponse, Map<String, Object?>>>(
      _i52.PostCommentsResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i53.PeopleAmountResponse, Map<String, Object?>>>(
      _i54.PeopleAmountResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i55.PostsResponse, Map<String, Object?>>>(
      _i56.PostsResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i57.MessageResponse, Map<String, Object?>>>(
      _i58.MessageResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i59.LogOutResponse, Map<String, Object?>>>(
      _i60.LogOutResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i61.LogInResponse, Map<String, Object?>>>(
      _i62.LogInResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i63.GetUserByIDResponse, Map<String, Object?>>>(
      _i64.GetUserByIDResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i65.EndUsersResponse, Map<String, Object?>>>(
      _i66.EndUsersResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i67.ChatResponse, Map<String, Object?>>>(
      _i68.ChatResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i69.ChatEventResponse, Map<String, Object?>>>(
      _i70.ChatEventResponseJsonConverter());
  gh.singleton<_i23.JsonConverter<_i71.ChatsResponse, Map<String, Object?>>>(
      _i72.ChatsResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i73.GetDevicesResponse, Map<String, Object?>>>(
      _i74.GetDevicesResponseJsonConverter());
  gh.singleton<
          _i23.JsonConverter<_i75.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i76.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<_i77.LockService>(_i77.LockService());
  gh.factory<_i78.LockStore>(
      () => _i78.LockStore(lockService: gh<_i77.LockService>()));
  gh.singleton<_i79.LogInStringProvider>(_i80.ProdLogInStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i82.Mapster>(mapsterModule.mapster);
  gh.singleton<_i83.MenuStringProvider>(_i84.ProdMenuStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i85.MessageRepository>(
    _i86.DevMessageRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i87.PeopleStringProvider>(_i88.ProdPeopleStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i89.PostCommentStringProvider>(
      _i90.ProdPostCommentStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i91.PostMapsterRegistrar>(
      _i91.PostMapsterRegistrar(gh<_i82.Mapster>())..register());
  gh.singleton<_i92.PostRepository>(
    _i93.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i94.PostStringProvider>(_i95.ProdPostStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i96.RegisterStringProvider>(_i97.ProdRegisterStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i98.RulesStringProvider>(_i99.ProdRulesStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  await gh.singletonAsync<_i100.ServerExceptionProvider>(
    () => _i101.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i102.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i103.SettingsMapsterRegistrar>(
      _i103.SettingsMapsterRegistrar(gh<_i82.Mapster>())..register());
  gh.singleton<_i104.SettingsStringProvider>(_i105.ProdSettingsStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i106.StaffUserRepository>(
    _i107.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i108.SuffixNumberProvider>(_i109.ProdSuffixNumberProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i110.TokenRepository>(_i111.ProdTokenRepository(
    dio: gh<_i16.Dio>(),
    secureStorage: gh<_i19.FlutterSecureStorage>(),
  ));
  gh.singleton<_i112.UserInfoProvider>(_i113.ProdUserInfoProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i114.UserInfoStringProvider>(_i115.ProdUserInfoStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i116.UserPostsStringProvider>(_i117.ProdUserPostsStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i118.UserProvider>(_i119.ProdUserProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i120.AccountProvider>(_i121.ProdAccountProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i14.AuthExceptionProvider>(
      _i122.ProdAuthExceptionProvider(gh<_i14.ServerExceptionProvider>()));
  gh.singleton<_i123.AuthProvider>(_i124.ProdAuthProvider(
    gh<_i16.Dio>(),
    gh<_i125.ServerSettings>(),
  ));
  gh.singleton<_i108.BeautifiedNumberProvider>(
      _i126.ProdBeautifiedNumberProvider(
          suffixNumberProvider: gh<_i108.SuffixNumberProvider>()));
  gh.singleton<_i127.CategoryStringProvider>(_i128.ProdCategoryStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i129.ChangePersonalInfoStringProvider>(
      _i130.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i131.ChatListListenProvider>(_i132.ProdChatListListenProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i133.ChatListProvider>(_i134.ProdChatListProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i135.ChatListStringProvider>(_i136.ProdChatListStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i137.ChatListenProvider>(_i138.ProdChatListenProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i139.ChatStringProvider>(_i140.ProdChatStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i141.CommentProvider>(_i142.ProdCommentProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i143.CommentReplyStringProvider>(
      _i144.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i145.CommentStringProvider>(_i146.ProdCommentStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i147.CommonMapsterRegistrar>(
      _i147.CommonMapsterRegistrar(gh<_i82.Mapster>())..register());
  gh.singleton<_i148.CreateChatProvider>(_i149.ProdCreateChatProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i150.CreateDialogueStringProvider>(
      _i151.ProdCreateDialogueStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i152.CreateGroupStringProvider>(
      _i153.ProdCreateGroupStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i154.CreateMonologueStringProvider>(
      _i155.ProdCreateMonologueStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i156.FeedProvider>(_i157.ProdFeedProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i158.FeedStringProvider>(_i159.ProdFeedStringProvider(
      navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i160.FriendBidsProvider>(_i161.ProdFriendBidsProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i162.FriendBidsStringProvider>(
      _i163.ProdFriendBidsStringProvider(
          navigatorKey: gh<_i81.GlobalKey<_i81.NavigatorState>>()));
  gh.singleton<_i164.KeepFreshTokenExceptionProvider>(
      _i165.ProdKeepFreshTokenExceptionProvider(
          gh<_i100.ServerExceptionProvider>()));
  gh.singleton<_i166.KeepFreshTokenProvider>(_i167.ProdKeepFreshTokenProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i168.MediaUrlCreator>(
      _i168.MediaUrlCreator(serverSettings: gh<_i102.ServerSettings>()));
  gh.singleton<_i169.MessageProvider>(_i170.ProdMessageProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i171.PeopleProvider>(_i172.ProdPeopleProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i173.PostProvider>(_i174.ProdPostProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i175.RulesProvider>(_i176.ProdRulesProvider(
    gh<_i16.Dio>(),
    gh<_i102.ServerSettings>(),
  ));
  gh.singleton<_i177.RulesService>(
      _i177.RulesService(rulesProvider: gh<_i175.RulesProvider>()));
  gh.singleton<_i14.ServerAvailabilityProvider>(
      _i178.ProdServerAvailabilityProvider(gh<_i102.ServerSettings>()));
  gh.singleton<_i179.KeepFreshTokenService>(_i179.KeepFreshTokenService(
    tokenRepository: gh<_i180.TokenRepository>(),
    keepFreshTokenProvider: gh<_i166.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i181.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i164.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i182.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
  ));
  gh.singleton<_i183.MessageService>(_i183.MessageService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    messageProvider: gh<_i169.MessageProvider>(),
    messageRepository: gh<_i180.MessageRepository>(),
  ));
  gh.singleton<_i184.PeopleService>(_i184.PeopleService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    peopleProvider: gh<_i171.PeopleProvider>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
    staffUserRepository: gh<_i180.StaffUserRepository>(),
  ));
  gh.singleton<_i185.PostService>(_i185.PostService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    postProvider: gh<_i173.PostProvider>(),
    postRepository: gh<_i180.PostRepository>(),
    commentRepository: gh<_i180.CommentRepository>(),
  ));
  gh.factory<_i186.SubscriptionsStore>(() => _i186.SubscriptionsStore(
        peopleService: gh<_i184.PeopleService>(),
        peopleStringProvider: gh<_i87.PeopleStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i187.UserInfoService>(_i187.UserInfoService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    userInfoProvider: gh<_i112.UserInfoProvider>(),
  ));
  gh.singleton<_i188.UserService>(_i188.UserService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    userProvider: gh<_i118.UserProvider>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
    staffUserRepository: gh<_i180.StaffUserRepository>(),
  ));
  gh.singleton<_i189.AccountService>(
    _i189.AccountService(
      authStatusProvider: gh<_i14.AuthStatusProvider>(),
      userProvider: gh<_i14.UserProvider>(),
      accountProvider: gh<_i120.AccountProvider>(),
      keepFreshTokenService: gh<_i14.KeepFreshTokenService>(),
      endUserRepository: gh<_i180.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i190.AllUsersStore>(() => _i190.AllUsersStore(
        peopleService: gh<_i184.PeopleService>(),
        peopleStringProvider: gh<_i87.PeopleStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  await gh.singletonAsync<_i191.AuthService>(
    () {
      final i = _i191.AuthService(
        serverAvailabilityProvider: gh<_i182.ServerAvailabilityProvider>(),
        authProvider: gh<_i123.AuthProvider>(),
        tokenRepository: gh<_i180.TokenRepository>(),
        endUserRepository: gh<_i180.EndUserRepository>(),
        authExceptionProvider: gh<_i192.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i181.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i193.CategoryService>(_i193.CategoryService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    feedProvider: gh<_i156.FeedProvider>(),
  ));
  gh.singleton<_i194.ChatListService>(_i194.ChatListService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    chatListProvider: gh<_i133.ChatListProvider>(),
    chatListListenProvider: gh<_i131.ChatListListenProvider>(),
    chatRepository: gh<_i180.ChatRepository>(),
  ));
  gh.singleton<_i195.ChatService>(_i195.ChatService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    chatListenProvider: gh<_i137.ChatListenProvider>(),
    messageRepository: gh<_i180.MessageRepository>(),
  ));
  gh.singleton<_i196.CommentService>(_i196.CommentService(
    keepFreshTokenService: gh<_i45.KeepFreshTokenService>(),
    commentProvider: gh<_i141.CommentProvider>(),
    commentRepository: gh<_i180.CommentRepository>(),
  ));
  gh.singleton<_i197.CreateChatService>(_i197.CreateChatService(
    keepFreshTokenService: gh<_i179.KeepFreshTokenService>(),
    createChatProvider: gh<_i148.CreateChatProvider>(),
    chatRepository: gh<_i180.ChatRepository>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
    staffUserRepository: gh<_i180.StaffUserRepository>(),
  ));
  gh.singleton<_i198.FeedService>(_i198.FeedService(
    keepFreshTokenService: gh<_i45.KeepFreshTokenService>(),
    feedProvider: gh<_i156.FeedProvider>(),
    postRepository: gh<_i180.PostRepository>(),
  ));
  gh.singleton<_i199.FriendBidsService>(_i199.FriendBidsService(
    keepFreshTokenService: gh<_i14.KeepFreshTokenService>(),
    friendBidsProvider: gh<_i160.FriendBidsProvider>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
  ));
  gh.singleton<_i200.GoRouter>(routerModule.router(
    gh<_i22.GlobalKey<_i22.NavigatorState>>(),
    gh<_i201.AuthService>(),
  ));
  gh.singleton<_i202.HomeCoordinator>(
    _i203.ProdHomeCoordinator(goRouter: gh<_i200.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i204.HomeStore>(
      () => _i204.HomeStore(homeCoordinator: gh<_i202.HomeCoordinator>()));
  gh.factory<_i205.InboxFriendBidsStore>(() => _i205.InboxFriendBidsStore(
        friendBidsService: gh<_i199.FriendBidsService>(),
        friendBidsStringProvider: gh<_i162.FriendBidsStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i201.LogInCoordinator>(
    _i206.ProdLogInCoordinator(
      goRouter: gh<_i200.GoRouter>(),
      authStatusProvider: gh<_i201.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i207.LogInStore>(() => _i207.LogInStore(
        authService: gh<_i14.AuthService>(),
        logInCoordinator: gh<_i208.LogInCoordinator>(),
        logInStringProvider: gh<_i79.LogInStringProvider>(),
      ));
  gh.singleton<_i201.MenuCoordinator>(
      _i209.ProdMenuCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i210.MenuStore>(_i210.MenuStore(
    menuCoordinator: gh<_i211.MenuCoordinator>(),
    menuStringProvider: gh<_i83.MenuStringProvider>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
  ));
  gh.factory<_i212.OutboxFriendBidsStore>(() => _i212.OutboxFriendBidsStore(
        friendBidsService: gh<_i199.FriendBidsService>(),
        friendBidsStringProvider: gh<_i162.FriendBidsStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i213.PeopleCoordinator>(
      _i214.ProdPeopleCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i201.PostCoordinator>(
      _i215.ProdPostCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i201.RegisterCoordinator>(
    _i216.ProdRegisterCoordinator(
      goRouter: gh<_i200.GoRouter>(),
      authStatusProvider: gh<_i201.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i217.RegisterStore>(() => _i217.RegisterStore(
        authService: gh<_i14.AuthService>(),
        registerCoordinator: gh<_i218.RegisterCoordinator>(),
        registerStringProvider: gh<_i96.RegisterStringProvider>(),
      ));
  gh.singleton<_i201.RulesCoordinator>(
      _i219.ProdRulesCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i220.RulesStore>(() => _i220.RulesStore(
        rulesService: gh<_i177.RulesService>(),
        rulesCoordinator: gh<_i221.RulesCoordinator>(),
        rulesStringProvider: gh<_i98.RulesStringProvider>(),
      ));
  gh.singleton<_i201.SettingsCoordinator>(
      _i222.ProdSettingsCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i223.SettingsStore>(_i223.SettingsStore(
    authService: gh<_i45.AuthService>(),
    settingsCoordinator: gh<_i224.SettingsCoordinator>(),
    settingsStringProvider: gh<_i104.SettingsStringProvider>(),
    accountService: gh<_i189.AccountService>(),
    mapster: gh<_i82.Mapster>(),
  ));
  gh.factory<_i225.SubscribersStore>(() => _i225.SubscribersStore(
        peopleService: gh<_i184.PeopleService>(),
        peopleStringProvider: gh<_i87.PeopleStringProvider>(),
        coordinator: gh<_i213.PeopleCoordinator>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i226.UserWallCoordinator>(
      _i227.ProdUserWallCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i201.AccountSettingsCoordinator>(
      _i228.ProdAccountSettingsCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i229.AccountSettingsStore>(() => _i229.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i230.AccountSettingsCoordinator>()));
  gh.singleton<_i201.ChangePersonalInfoCoordinator>(
      _i231.ProdChangePersonalInfoCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i232.ChangePersonalInfoStore>(() => _i232.ChangePersonalInfoStore(
        accountService: gh<_i233.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i234.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i129.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i235.ChatCoordinator>(
      _i236.ProdChatCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i237.ChatListCoordinator>(
      _i238.ProdChatListCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i239.ChatListStore>(_i239.ChatListStore(
    chatListService: gh<_i14.ChatListService>(),
    messageService: gh<_i14.MessageService>(),
    userService: gh<_i14.UserService>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
    coordinator: gh<_i237.ChatListCoordinator>(),
    chatListStringProvider: gh<_i108.ChatListStringProvider>(),
    mapster: gh<_i82.Mapster>(),
  ));
  gh.singleton<_i240.ChatStore>(_i240.ChatStore(
    chatService: gh<_i195.ChatService>(),
    chatListService: gh<_i194.ChatListService>(),
    messageService: gh<_i183.MessageService>(),
    userService: gh<_i188.UserService>(),
    chatStringProvider: gh<_i139.ChatStringProvider>(),
    coordinator: gh<_i235.ChatCoordinator>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
    dateTimeProvider: gh<_i108.DateTimeProvider>(),
    mapster: gh<_i82.Mapster>(),
  ));
  gh.singleton<_i201.CommentCoordinator>(
      _i241.ProdCommentCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i242.CommentReplyStore>(() => _i242.CommentReplyStore(
        commentService: gh<_i243.CommentService>(),
        userService: gh<_i45.UserService>(),
        commentCoordinator: gh<_i244.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i143.CommentReplyStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.factory<_i245.CommentStore>(() => _i245.CommentStore(
        commentReplyStore: gh<_i242.CommentReplyStore>(),
        commentService: gh<_i243.CommentService>(),
        userService: gh<_i45.UserService>(),
        commentCoordinator: gh<_i244.CommentCoordinator>(),
        commentStringProvider: gh<_i145.CommentStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i246.CreateDialogueCoordinator>(
      _i247.ProdCreateDialogueCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i248.CreateDialogueStore>(() => _i248.CreateDialogueStore(
        createChatService: gh<_i197.CreateChatService>(),
        createDialogueStringProvider: gh<_i150.CreateDialogueStringProvider>(),
        endUserRepository: gh<_i180.EndUserRepository>(),
        coordinator: gh<_i246.CreateDialogueCoordinator>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i249.CreateGroupCoordinator>(
      _i250.ProdCreateGroupCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i251.CreateGroupStore>(_i251.CreateGroupStore(
    createChatService: gh<_i197.CreateChatService>(),
    createGroupStringProvider: gh<_i152.CreateGroupStringProvider>(),
    coordinator: gh<_i249.CreateGroupCoordinator>(),
    beautifiedNumberProvider: gh<_i108.BeautifiedNumberProvider>(),
    endUserRepository: gh<_i180.EndUserRepository>(),
    mapster: gh<_i82.Mapster>(),
  ));
  gh.singleton<_i252.CreateMonologueCoordinator>(
      _i253.ProdCreateMonologueCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i254.CreateMonologueStore>(() => _i254.CreateMonologueStore(
        createChatService: gh<_i197.CreateChatService>(),
        coordinator: gh<_i252.CreateMonologueCoordinator>(),
        createMonologueStringProvider:
            gh<_i154.CreateMonologueStringProvider>(),
      ));
  gh.singleton<_i255.DevicesCoordinator>(
      _i256.ProdDevicesCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.singleton<_i257.DevicesStore>(_i257.DevicesStore(
    devicesCoordinator: gh<_i255.DevicesCoordinator>(),
    accountService: gh<_i189.AccountService>(),
    mapster: gh<_i82.Mapster>(),
  ));
  gh.singleton<_i201.FeedCoordinator>(
      _i258.ProdFeedCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i259.FeedStore>(() => _i259.FeedStore(
        feedService: gh<_i198.FeedService>(),
        userService: gh<_i14.UserService>(),
        postService: gh<_i14.PostService>(),
        feedCoordinator: gh<_i260.FeedCoordinator>(),
        feedStringProvider: gh<_i158.FeedStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i261.FriendBidsCoordinator>(
      _i262.ProdFriendBidsCoordinator(goRouter: gh<_i200.GoRouter>()));
  gh.factory<_i263.FriendBidsStore>(() => _i263.FriendBidsStore(
        inboxStore: gh<_i205.InboxFriendBidsStore>(),
        outboxStore: gh<_i212.OutboxFriendBidsStore>(),
        friendBidsService: gh<_i199.FriendBidsService>(),
        userInfoService: gh<_i14.UserInfoService>(),
        friendBidsStringProvider: gh<_i162.FriendBidsStringProvider>(),
        beautifiedNumberProvider: gh<_i108.BeautifiedNumberProvider>(),
        coordinator: gh<_i261.FriendBidsCoordinator>(),
        endUserRepository: gh<_i180.EndUserRepository>(),
      ));
  gh.factory<_i264.FriendsStore>(() => _i264.FriendsStore(
        peopleService: gh<_i184.PeopleService>(),
        peopleStringProvider: gh<_i87.PeopleStringProvider>(),
        coordinator: gh<_i213.PeopleCoordinator>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.factory<_i265.PeopleStore>(() => _i265.PeopleStore(
        allUsersStore: gh<_i190.AllUsersStore>(),
        friendsStore: gh<_i264.FriendsStore>(),
        subscribersStore: gh<_i225.SubscribersStore>(),
        subscriptionsStore: gh<_i186.SubscriptionsStore>(),
        peopleService: gh<_i184.PeopleService>(),
        peopleStringProvider: gh<_i87.PeopleStringProvider>(),
        coordinator: gh<_i213.PeopleCoordinator>(),
        beautifiedNumberProvider: gh<_i266.BeautifiedNumberProvider>(),
        endUserRepository: gh<_i17.EndUserRepository>(),
      ));
  gh.factory<_i267.PostCommentStore>(() => _i267.PostCommentStore(
        commentService: gh<_i243.CommentService>(),
        userService: gh<_i45.UserService>(),
        commentCoordinator: gh<_i244.CommentCoordinator>(),
        postCommentStringProvider: gh<_i89.PostCommentStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.factory<_i268.PostStore>(() => _i268.PostStore(
        postCommentStore: gh<_i267.PostCommentStore>(),
        postService: gh<_i45.PostService>(),
        userService: gh<_i45.UserService>(),
        postCoordinator: gh<_i269.PostCoordinator>(),
        postStringProvider: gh<_i94.PostStringProvider>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.factory<_i270.UserPostsStore>(() => _i270.UserPostsStore(
        postService: gh<_i185.PostService>(),
        userService: gh<_i188.UserService>(),
        coordinator: gh<_i226.UserWallCoordinator>(),
        userPostsStringProvider: gh<_i116.UserPostsStringProvider>(),
        endUserRepository: gh<_i17.EndUserRepository>(),
        mapster: gh<_i82.Mapster>(),
      ));
  gh.singleton<_i271.CategoryStore>(_i271.CategoryStore(
    feedStore: gh<_i259.FeedStore>(),
    categoryService: gh<_i193.CategoryService>(),
    categoryStringProvider: gh<_i127.CategoryStringProvider>(),
  ));
  gh.factory<_i272.UserInfoStore>(() => _i272.UserInfoStore(
        userPostsStore: gh<_i270.UserPostsStore>(),
        userInfoService: gh<_i45.UserInfoService>(),
        userInfoStringProvider: gh<_i114.UserInfoStringProvider>(),
        coordinator: gh<_i273.UserWallCoordinator>(),
        endUserRepository: gh<_i17.EndUserRepository>(),
        mapster: gh<_i82.Mapster>(),
      ));
  return getIt;
}

class _$EnvModule extends _i274.EnvModule {}

class _$RouterModule extends _i275.RouterModule {}

class _$DeviceInfoPlusModule extends _i276.DeviceInfoPlusModule {}

class _$DioModule extends _i277.DioModule {}

class _$MapsterModule extends _i278.MapsterModule {}

class _$SecureStorageModule extends _i279.SecureStorageModule {}

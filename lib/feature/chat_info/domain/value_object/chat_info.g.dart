// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatInfo _$$_ChatInfoFromJson(Map<String, dynamic> json) => _$_ChatInfo(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => UserChatInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatInfoToJson(_$_ChatInfo instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'participants': instance.participants.map((e) => e.toJson()).toList(),
    };

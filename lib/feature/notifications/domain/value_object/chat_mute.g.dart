// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_mute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMute _$$_ChatMuteFromJson(Map<String, dynamic> json) => _$_ChatMute(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      type: $enumDecode(_$MuteTypeEnumMap, json['type']),
      muteAt: json['muteAt'] == null
          ? null
          : Duration(microseconds: json['muteAt'] as int),
    );

Map<String, dynamic> _$$_ChatMuteToJson(_$_ChatMute instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'type': _$MuteTypeEnumMap[instance.type]!,
      'muteAt': instance.muteAt?.inMicroseconds,
    };

const _$MuteTypeEnumMap = {
  MuteType.never: 0,
  MuteType.forever: 1,
  MuteType.forTime: 2,
};

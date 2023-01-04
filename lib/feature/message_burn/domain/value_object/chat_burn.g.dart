// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_burn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatBurn _$$_ChatBurnFromJson(Map<String, dynamic> json) => _$_ChatBurn(
      chatID: ChatID.fromJson(json['chatID'] as Map<String, dynamic>),
      burn: json['burn'] as bool,
      burnAfter: json['burnAfter'] == null
          ? null
          : Duration(microseconds: json['burnAfter'] as int),
    );

Map<String, dynamic> _$$_ChatBurnToJson(_$_ChatBurn instance) =>
    <String, dynamic>{
      'chatID': instance.chatID.toJson(),
      'burn': instance.burn,
      'burnAfter': instance.burnAfter?.inMicroseconds,
    };

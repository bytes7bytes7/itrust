// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: MediaID.fromJson(json['id'] as Map<String, dynamic>),
      type: $enumDecode(_$MediaTypeEnumMap, json['type']),
      encodedBytes: json['encodedBytes'] as String,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'type': _$MediaTypeEnumMap[instance.type]!,
      'encodedBytes': instance.encodedBytes,
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'photo',
  MediaType.video: 'video',
  MediaType.doc: 'doc',
};

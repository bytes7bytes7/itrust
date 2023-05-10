// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewMedia _$NewMediaFromJson(Map<String, dynamic> json) => NewMedia(
      filename: json['filename'] as String,
      bytes: (json['bytes'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$NewMediaToJson(NewMedia instance) => <String, dynamic>{
      'filename': instance.filename,
      'bytes': instance.bytes,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Topic _$TopicFromJson(Map<String, dynamic> json) => _Topic(
  id: json['id'] as String,
  subjectId: json['subjectId'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$TopicToJson(_Topic instance) => <String, dynamic>{
  'id': instance.id,
  'subjectId': instance.subjectId,
  'name': instance.name,
};

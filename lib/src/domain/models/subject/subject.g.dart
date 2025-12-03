// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subject _$SubjectFromJson(Map<String, dynamic> json) => _Subject(
  id: json['id'] as String,
  name: json['name'] as String,
  colorCode: (json['colorCode'] as num).toInt(),
);

Map<String, dynamic> _$SubjectToJson(_Subject instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'colorCode': instance.colorCode,
};

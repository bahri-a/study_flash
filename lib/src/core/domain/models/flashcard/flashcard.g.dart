// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Flashcard _$FlashcardFromJson(Map<String, dynamic> json) => _Flashcard(
  id: json['id'] as String,
  topicId: json['topicId'] as String,
  frontText: json['frontText'] as String,
  backText: json['backText'] as String,
  isLearned: json['isLearned'] as bool? ?? false,
  nextReview: DateTime.parse(json['nextReview'] as String),
  reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FlashcardToJson(_Flashcard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topicId': instance.topicId,
      'frontText': instance.frontText,
      'backText': instance.backText,
      'isLearned': instance.isLearned,
      'nextReview': instance.nextReview.toIso8601String(),
      'reviewCount': instance.reviewCount,
    };

const _$StatusEnumMap = {
  Status.isLeanred: 'isLeanred',
  Status.toBeLearned: 'toBeLearned',
  Status.neutral: 'neutral',
};

import 'package:freezed_annotation/freezed_annotation.dart';

//Name der subject Datei
part 'flashcard.freezed.dart';
part 'flashcard.g.dart';

@JsonEnum(
  alwaysCreate: true,
) // sorgt für sauberes Mapping. Musst du nicht verstehen -> boilerplate-Code.
enum Status { isLeanred, toBeLearned, neutral }

@freezed
class Flashcard with _$Flashcard {
  const factory Flashcard({
    required String id,
    required String topicId,

    required String wort,
    required String vokabel,

    @Default(false) bool isLearned,
    required DateTime nextReview,
    @Default(0) int reviewCount,
  }) = _Flashcard;

  factory Flashcard.fromJson(Map<String, dynamic> json) =>
      _$FlashcardFromJson(json);
}

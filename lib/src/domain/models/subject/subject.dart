import 'package:freezed_annotation/freezed_annotation.dart';

//Name der subject Datei
part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  const factory Subject({
    required String id,
    required String name,
    required int colorCode,
  }) = _Subject;

  // final String id = "";
  // final String name = "";
  // final int colorCode = 0;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}

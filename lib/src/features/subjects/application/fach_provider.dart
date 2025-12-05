import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study_flash/src/core/data/repositories/subject_repository.dart';
import 'package:study_flash/src/features/subjects/data/subject_repository.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';

part 'fach_provider.g.dart';

@riverpod
class FachNotifier extends _$FachNotifier {
  @override
  List<Fach> build() {
    return SubjectRepository212121212121().getFaecher();
  }

  void addFach(Fach neuesFach) {
    state = [...state, neuesFach];
  }
}

import 'package:study_flash/src/constants/app_colors.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';

class SubjectRepository212121212121 {
  final List<Fach> _faecher = [
    Fach(
      name: "Mathe",
      farbe: AppColors.cyan,
      vokabeln: {"Apfel": "Apple", "Auto": "Car"},
      id: 1,
      themen: {
        1: "Thema 1",
        2: "Thema 2",
        3: "Thema 3",
        4: "Thema 4",
        5: "Thema 6",
        6: "Thema 6",
      },
    ),
    Fach(
      name: "Deutsch",
      farbe: AppColors.blue,
      vokabeln: {"Apfel": "Apple", "Auto": "Car"},
      id: 2,
      themen: {
        1: "Thema 1",
        2: "Thema 2",
        3: "Thema 3",
        4: "Thema 4",
        5: "Thema 6",
        6: "Thema 6",
      },
    ),
    Fach(
      name: "Englisch",
      farbe: AppColors.bordeaux,
      vokabeln: {"Apfel": "Apple", "Auto": "Car"},
      id: 3,
      themen: {
        1: "Thema 1",
        2: "Thema 2",
        3: "Thema 3",
        4: "Thema 4",
        5: "Thema 6",
        6: "Thema 6",
      },
    ),
    Fach(
      name: "Green",
      farbe: AppColors.green,
      vokabeln: {"Apfel": "Apple", "Auto": "Car"},
      id: 4,
      themen: {
        1: "Thema 1",
        2: "Thema 2",
        3: "Thema 3",
        4: "Thema 4",
        5: "Thema 6",
        6: "Thema 6",
      },
    ),
  ];

  List<Fach> getFaecher() {
    return _faecher;
  }
}

import 'package:study_flash/src/features/study/domain/vokabel_model.dart';

class VokabelRepository {
  VokabelMap mathe = VokabelMap(
    vokabeln: {"Apfel": "Apple", "Auto": "Car"},
  );

  VokabelMap deutsch = VokabelMap(vokabeln: {});

  VokabelMap arabisch = VokabelMap(vokabeln: {});

  Map<String, String> getVokMap() {
    return mathe.vokabeln;
  }

  List<String> falscheVokabeln = [];

  List<String> richtigeVokabeln = [];
}

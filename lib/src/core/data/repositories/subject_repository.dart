import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:study_flash/src/core/data/CoreService.dart';
import 'package:study_flash/src/core/domain/models/subject/subject.dart';

class SubjectRepository {
  final CoreService _coreService;
  static const String path = 'subjects';

  SubjectRepository(this._coreService);

  Future<String> addSubject(Subject subject) async {
    // 1. Das Subject-Objekt ohne ID in die rohe Map umwandeln
    final Map<String, dynamic> dataWithoutId = subject.toJson();
    // 2. CoreService nutzen: Dokument OHNE ID hinzufügen
    // Die Datenbank (Firestore) generiert jetzt eine eindeutige ID
    final DocumentReference docRef = await _coreService.addDocument(
      path: path,
      data: dataWithoutId,
    );
    // 3. ID auslesen: Die generierte ID aus der DocumentReference holen
    final String generatedId = docRef.id;
    // 4. Subject-Objekt kopieren: Das ursprüngliche Subject-Objekt mit der
    //    NEUEN ID überschreiben (Dank deiner Freezed-copyWith-Methode!)
    final Subject subjectWithId = subject.copyWith(id: generatedId);
    // 5. CoreService nutzen: Das Dokument mit der korrekten ID AKTUALISIEREN (SET)
    // Wir speichern die Daten erneut, diesmal mit der korrekten ID im Datenfeld (Schlüssel 'id').
    await _coreService.setDocument(
      path: path,
      docId: generatedId,
      data: subjectWithId.toJson(),
    );

    // 6. Die ID zurückgeben (wird im Application Layer / Riverpod benötigt)
    return generatedId;
  }
}

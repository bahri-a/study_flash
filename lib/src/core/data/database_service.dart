import 'package:cloud_firestore/cloud_firestore.dart'; // Wichtig: Firestore Paket

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> add({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final DocumentReference docRef = await _firestore
        .collection(path)
        .add(data);
    return docRef.id; // <-- Die generierte ID von Firestore
  }

  Future<Map<String, dynamic>?> getObject({
    required String path,
    required String docId,
  }) async {
    final docSnapshot = await _firestore
        .collection(path)
        .doc(docId)
        .get();
    return docSnapshot.data();
  }

  // READ ALL (Alle Dokumente einer Collection lesen)
  Future<List<Map<String, dynamic>>> getCollection({
    required String path,
  }) async {
    final querySnapshot = await _firestore.collection(path).get();
    // Wandelt die Liste von Dokumenten in eine Liste von Maps um
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  // UPDATE (Daten aktualisieren)
  Future<void> update({
    required String path,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(path).doc(docId).update(data);
  }

  // DELETE (Löschen)
  Future<void> delete({
    required String path,
    required String docId,
  }) async {
    await _firestore.collection(path).doc(docId).delete();
  }
}






// import 'package:firebase_database/firebase_database.dart';

// class DatabaseService {
//   final FirebaseDatabase _firebaseDatabase = FirebaseDatabase.instance;

//   Future<void> create({
//     required String path,
//     required Map<String, dynamic> data,
//   }) async {
//     final DatabaseReference ref = _firebaseDatabase.ref().child(path);
//   }


//   Future<DataSnapshot?> read({
//     required String path
//   }) async {
//     final DatabaseReference ref = _firebaseDatabase.ref().child(path);
//     final DataSnapshot snapshot = await ref.get();
//     return snapshot.exists ? snapshot : null;
//   }

//   Future<void> update({
//     required String path,
//     required Map<String, dynamic> data,
//   }) async {
//     final DatabaseReference ref = _firebaseDatabase.ref().child(path);
//     await ref.update(data);
//   }

//   Future<void> delete({
//     required String path
//   }) async {
//     final DatabaseReference ref = _firebaseDatabase.ref().child(path);
//     await ref.remove();
//   }
// }

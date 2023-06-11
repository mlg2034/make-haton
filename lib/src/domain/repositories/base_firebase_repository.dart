import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  FirebaseRepository();

  Future<void> addToCollections(String collectionName, Map<String, Object> data);

  Future<void> getCollections(String collectionName, Map<String, Object> data);

  Future<void> updateCollection(String collectionName, Map<String, Object> data);

  Future<void> deleteFromCollections(String collectionName, Map<String, Object> data);
}

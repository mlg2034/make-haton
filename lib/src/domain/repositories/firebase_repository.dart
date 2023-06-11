import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseRepository {
  final CollectionReference _usersCollection;

  FirebaseRepository(this._usersCollection);

  Future<void> addUser(String name, String email);

  Future<void> updateUser(String userId, String newName, String newEmail);

  Future<void> deleteUser(String userId);
}

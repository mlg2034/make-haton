import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseRepository {
  final CollectionReference _usersCollection = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(String name, String email) async {
    try {
      await _usersCollection.add({
        'name': name,
        'email': email,
      });
      print('User added successfully');
    } catch (e) {
      print('Error adding user: $e');
    }
  }

  Stream<QuerySnapshot> getUsersStream() {
    return _usersCollection.snapshots();
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    try {
      final snapshot = await _usersCollection.get();
      return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error getting users: $e');
      return [];
    }
  }

  Future<void> updateUser(String userId, String newName, String newEmail) async {
    try {
      await _usersCollection.doc(userId).update({
        'name': newName,
        'email': newEmail,
      });
      print('User updated successfully');
    } catch (e) {
      print('Error updating user: $e');
    }
  }

  Future<void> deleteUser(String userId) async {
    try {
      await _usersCollection.doc(userId).delete();
      print('User deleted successfully');
    } catch (e) {
      print('Error deleting user: $e');
    }
  }
}

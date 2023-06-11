import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AppAuthRepository {
  Future<User?> signInWithGoogle();

  Future<User?> getUser();

  Future<void> signOut();
}

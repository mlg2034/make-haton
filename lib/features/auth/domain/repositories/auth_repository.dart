import 'dart:async';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';

abstract class AppAuthRepository {
  Future<UserEntity?>? signInWithGoogle();

  Future<UserEntity?>? getUser();

  Future<void> signOut();
}

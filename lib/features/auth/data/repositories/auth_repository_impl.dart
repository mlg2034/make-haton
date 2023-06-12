import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:make_haton/features/auth/data/extensions.dart';
import 'package:make_haton/features/auth/data/models/user_model.dart';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';

class AppAuthRepositoryImpl implements AppAuthRepository {
  @override
  Future<UserEntity?>? signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    print(googleSignInAccount==null);

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential = await auth.signInWithCredential(credential);
        user = userCredential.user;
        print(user);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
          print(user);
        } else if (e.code == 'invalid-credential') {
          // handle the error here
          print(user);
        }
      } catch (e) {
        // handle the error here
        print(e);
      }
    }
    if (user == null) {
      print('object');
      return null;
    }

    return UserModel.fromFirebase(user).toEntity();
  }

  @override
  Future<UserEntity?>? getUser() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return null;
    }

    print(user);
    return UserModel.fromFirebase(user).toEntity();
  }

  @override
  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }
}

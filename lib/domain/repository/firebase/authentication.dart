import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:make_haton/src/ui/presentation/pages/home_page/home_page.dart';
import 'package:make_haton/src/ui/presentation/pages/auth_page/auth_page.dart';

class AppAuthService {
  //Determine if the user is authenticated.
  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.data != null) {
          return const HomePage();
        } else {
          return const AuthPage();
        }
      },
    );
  }

  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: <String>["email", "https://www.googleapis.com/auth/contacts.readonly"],
    ).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  //Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}

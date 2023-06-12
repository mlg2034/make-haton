import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/app/app.dart';

void main() async {
  configDi();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  final app = await Firebase.initializeApp();
  FirebaseAuth.instanceFor(app: app);
  FirebaseFirestore.instanceFor(app: app);
  print(Firebase.apps);


  runApp(const MyApp());
}

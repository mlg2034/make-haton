import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/app/app.dart';

void main() async {
  configDi();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => runApp(const MyApp()));
}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/app/app.dart';

void main() async {
  configDi();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  await Firebase.initializeApp().then((value) => runApp(const MyApp()));
}


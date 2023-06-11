import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/app/app.dart';
import 'package:make_haton/src/ui/presentation/pages/dictionary/dictionary_page.dart';
import 'package:make_haton/src/ui/presentation/pages/no_connection_page/no_connection_page.dart';

void main() async {
  configDi();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  await Firebase.initializeApp().then((value) => runApp(const MyApp()));
}

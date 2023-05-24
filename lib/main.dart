import 'package:flutter/material.dart';
import 'package:make_haton/src/ui/presentation/pages/home_page/home_page.dart';
import 'package:make_haton/src/ui/presentation/pages/quiz_page/quiz_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:make_haton/src/ui/presentation/pages/settings/settings_page.dart';

void main() {
  runApp(const MyApp());
}

//TODO: remove ui part from main.dart and move to presentation layer
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {  
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SettingsPage(),
      );
      }
    );
  }
}

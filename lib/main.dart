import 'package:flutter/material.dart';
import 'package:make_haton/src/ui/presentation/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

//TODO: remove ui part from main.dart and move to presentation layer
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

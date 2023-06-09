import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/src/domain/entities/language_enum.dart';
import 'package:make_haton/src/ui/presentation/pages/home_page/home_page.dart';
import 'package:make_haton/src/ui/blocs/localization_bloc/localization_bloc.dart';
import 'package:make_haton/src/ui/presentation/pages/auth_page/auth_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LocalizationBloc(const LocalizationState(selectedLanguage: Language.kazakh)),
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (_, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const AuthPage(),
            locale: state.selectedLanguage.value,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}

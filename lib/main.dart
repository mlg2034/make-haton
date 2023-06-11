import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/src/domain/entities/language_enum.dart';
import 'package:make_haton/src/ui/presentation/pages/home_page/home_page.dart';
import 'package:make_haton/src/ui/blocs/localization_bloc/localization_bloc.dart';
import 'package:make_haton/src/ui/presentation/pages/auth_page/auth_page.dart';
import 'package:make_haton/domain/repository/firebase/authentication.dart';
import 'package:make_haton/src/ui/presentation/pages/lesson_page/lesson_preview_page.dart';
import 'package:make_haton/src/ui/presentation/pages/dictionary/dictionary_page.dart';
import 'package:make_haton/src/ui/presentation/pages/no_connection_page/no_connection_page.dart';
import 'package:make_haton/src/ui/presentation/pages/collections/collections.dart';
import 'package:ui_kit/ui_kit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
            home: Collections(
              titleList: [Text("data"),Text("2sasdadaf")],
              itemsList: [SvgPicture.asset(UiKitAssets.images.imToroid.keyName),SvgPicture.asset(UiKitAssets.images.imCar.keyName)],
            ),
            /*Dictionary(
              titleList: ['Animals','transport','emotions'],
              itemsList: ['Dog','Cat','Bird','Dog','Cat',],
            ),*/
            locale: state.selectedLanguage.value,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            );
        },
      ),
    );
  }
}

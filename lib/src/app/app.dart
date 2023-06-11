import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/auth/ui/pages/auth_page.dart';
import 'package:make_haton/features/practice/presentation/practice_preview_page.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/app/provider_scope.dart';
import 'package:make_haton/src/domain/entities/language_enum.dart';
import 'package:make_haton/src/ui/blocs/localization_bloc/localization_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (_, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            navigatorKey: getIt.get<NavigatorKey>(),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context, child) => child ?? const SizedBox.shrink(),
            // initialRoute: Routes.homePage,
            home: const PracticePreviewPage(),
            locale: state.selectedLanguage.value,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:make_haton/features/auth/ui/pages/auth_page.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/shared/routes.dart';
import 'package:make_haton/src/app/provider_scope.dart';
import 'package:make_haton/src/ui/blocs/localization_bloc/localization_bloc.dart';
import 'package:make_haton/src/ui/blocs/navigator_bloc/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            authorized: (user) {
              final navigatorManager = getIt.get<NavigatorManager>();
              navigatorManager.pushReplacementNamed(Routes.homePage);
            },
            unauthorized: (user) {},
            loading: (user) {},
            error: (user) {},
          );
        },
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
              home: const AuthPage(),
              locale: state.selectedLanguage.value,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}

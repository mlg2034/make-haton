import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:make_haton/features/auth/domain/use_cases/get_current_user_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_in_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_out_usecase.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/domain/entities/language_enum.dart';
import 'package:make_haton/src/ui/blocs/localization_bloc/localization_bloc.dart';

class ProviderScope extends StatelessWidget {
  final Widget child;

  const ProviderScope({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalizationBloc>(
          create: (context) =>
              LocalizationBloc(const LocalizationState(selectedLanguage: Language.kazakh)),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            const AuthState.unauthorized(null),
            getIt.get<SigningInUseCase>(),
            getIt.get<GetUserUseCase>(),
            getIt.get<SignOutUseCase>(),
          ),
        ),
      ],
      child: Builder(
        builder: (context) {
          return child;
        },
      ),
    );
  }
}

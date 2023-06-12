import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:make_haton/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';
import 'package:make_haton/features/auth/domain/use_cases/get_current_user_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_in_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_out_usecase.dart';
import 'package:make_haton/src/services/app_tts.dart';
import 'package:make_haton/src/ui/blocs/navigator_bloc/navigation_service.dart';

typedef NavigatorKey = GlobalKey<NavigatorState>;

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configDi() {
  ///example:
  ///  Register your repository/service
  ///  GetIt.I.registerFactory<ServiceName>(ServiceName());
  ///  GetIt.I.registerSingleton<AppModel>(AppModel());
  ///  code below should be in UI layer
  ///  MaterialButton(
  ///   child: Text("Update"),
  ///   onPressed: getIt<AppModel>().update   // given that your AppModel has a method update
  /// ),
  ///add dependencies here:
  GetIt.I.registerSingleton<NavigatorKey>(
    GlobalKey<NavigatorState>(debugLabel: 'navigatorStateKeyProvider'),
  );
  GetIt.I.registerSingleton<NavigatorManager>(
    NavigatorManager(getIt.get<GlobalKey<NavigatorState>>()),
  );
  GetIt.I.registerLazySingleton<AppAuthRepository>(() => AppAuthRepositoryImpl());
  GetIt.I.registerFactory<GetUserUseCase>(() => GetUserUseCase(getIt.get<AppAuthRepository>()));
  GetIt.I.registerFactory<SignOutUseCase>(() => SignOutUseCase(getIt.get<AppAuthRepository>()));
  GetIt.I.registerFactory<SigningInUseCase>(() => SigningInUseCase(getIt.get<AppAuthRepository>()));
  GetIt.I.registerSingleton<AppTTS>(AppTTS(FlutterTts()));
}
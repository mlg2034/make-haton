import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
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
      GlobalKey<NavigatorState>(debugLabel: 'navigatorStateKeyProvider'));
  GetIt.I.registerSingleton<NavigatorManager>(
      NavigatorManager(getIt.get<GlobalKey<NavigatorState>>()));
  GetIt.I.registerLazySingleton<TestUseCase>(() => const TestUseCase());
}

class TestUseCase {
  const TestUseCase();
}

class TestBloc {
  final TestUseCase createUser;
  const TestBloc({required this.createUser});

  onChange(event) {
    // if(event is CreateUser){
    //   final a = createUser.call();
    //   yield State.copyWith(salary: 1000000);
    // }
  }
}

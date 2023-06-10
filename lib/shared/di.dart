import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)

void setupDi() {
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
}
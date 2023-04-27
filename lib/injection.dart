import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(asExtension: false)
FutureOr<GetIt> configureInjection(String env) {
  return init(getIt, environment: env);
}

// Future<void> init() async {
//   FirebaseAuth firebaseAuth;
//   GoogleSignIn googleSignIn;
//   getIt.registerFactory(() => SignInFormBloc(getIt()));
//   getIt.registerLazySingleton<IAuthFacade>(
//       () => FirebaseAuthFacade(getIt(), getIt()));
//   getIt.registerLazySingleton(
//       () => FirebaseAuthFacade(firebaseAuth, googleSignIn));
// }

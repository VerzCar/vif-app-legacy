import 'package:get_it/get_it.dart';
import 'package:vote_your_face/application/authentication/authentication.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:vote_your_face/presentation/login/login.dart';
import 'package:vote_your_face/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:vote_your_face/presentation/verification/cubit/verification_cubit.dart';

final sl = GetIt.I;

Future<void> init() async {
  //! state management
  sl.registerFactory(() => AuthenticationBloc(authenticationRepository: sl()));
  sl.registerFactory(() => LoginBloc(authenticationRepository: sl()));
  sl.registerFactory(() => SignUpCubit(sl()));
  sl.registerFactory(() => VerificationCubit(sl()));

  //! repos
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepository());
}

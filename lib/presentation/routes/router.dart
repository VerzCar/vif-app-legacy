import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/home/home.dart';
import 'package:vote_your_face/presentation/login/login.dart';
import 'package:vote_your_face/presentation/sign_up/view/sign_up_page.dart';
import 'package:vote_your_face/presentation/splash/splash.dart';
import 'package:vote_your_face/presentation/verification/view/verification_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: LoginPage, initial: false),
  AutoRoute(page: SignUpPage, initial: false),
  AutoRoute(page: VerificationPage, initial: false),
  AutoRoute(page: HomePage, initial: false),
])
class $AppRouter {}

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:vote_your_face/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(
    authenticationRepository: AuthenticationRepository(),
  ));
}

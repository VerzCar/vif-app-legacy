import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/application/authentication/authentication.dart';
import 'package:vote_your_face/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthFlowStatus.session:
            context.router.replace(const HomePageRoute());
            break;
          case AuthFlowStatus.login:
            context.router.replace(const LoginPageRoute());
            break;
          case AuthFlowStatus.signUp:
            context.router.replace(const SignUpPageRoute());
            break;
          default:
            break;
        }
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/routes/router.gr.dart';
import 'package:vote_your_face/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:vote_your_face/presentation/sign_up/view/sign_up_form.dart';
import 'package:vote_your_face/injection.dart';
import 'package:auto_route/auto_route.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: SafeArea(
          minimum: const EdgeInsets.all(12),
          child: Stack(children: [
            BlocProvider<SignUpCubit>(
              create: (context) => sl<SignUpCubit>(),
              child: const SignUpForm(),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  context.router.replace(const LoginPageRoute());
                },
                child: const Text('Already have an account? Login.'),
              ),
            )
          ])),
    );
  }
}

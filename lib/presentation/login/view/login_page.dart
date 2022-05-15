import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/login/login.dart';
import 'package:vote_your_face/injection.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = sl<LoginBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocProvider<LoginBloc>(
        create: (context) => loginBloc,
        child: SafeArea(
            minimum: const EdgeInsets.all(12),
            child: Stack(children: [
              const LoginForm(),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(const ShowSignup());
                    //loginBloc.add(const ShowSignup());
                  },
                  child: const Text('Don\'t have an account? Sign up.'),
                ),
              )
            ])),
      ),
    );
  }
}

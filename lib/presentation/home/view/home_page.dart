import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/home/cubit/home_cubit.dart';
import 'package:vote_your_face/presentation/home/view/home_view.dart';
import 'package:vote_your_face/presentation/routes/router.gr.dart';
import 'package:vote_your_face/application/authentication/authentication.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.status == AuthFlowStatus.unauthenticated) {
          context.router.replace(const LoginPageRoute());
        }
      },
      child: BlocProvider(
        create: (_) => HomeCubit(),
        child: const HomeView(),
      ),
    );
  }
}

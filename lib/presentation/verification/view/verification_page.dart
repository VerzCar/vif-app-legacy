import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/verification/cubit/verification_cubit.dart';
import 'package:vote_your_face/presentation/verification/view/verification_form.dart';
import 'package:vote_your_face/injection.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 40),
        child: BlocProvider<VerificationCubit>(
          create: (context) => sl<VerificationCubit>(),
          child: const VerificationForm(),
        ),
      ),
    );
  }
}

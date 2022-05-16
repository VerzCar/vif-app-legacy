import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/routes/router.gr.dart';
import 'package:vote_your_face/presentation/verification/cubit/verification_cubit.dart';

class VerificationForm extends StatelessWidget {
  const VerificationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerificationCubit, VerificationState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          context.router.replace(const HomePageRoute());
        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                  content: Text(state.errorMessage ?? 'Verification Failure')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _UsernameInput(),
            const SizedBox(height: 8),
            _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerificationCubit, VerificationState>(
      buildWhen: (previous, current) =>
          previous.verificationCode != current.verificationCode,
      builder: (context, state) {
        return TextField(
          key: const Key('verificationForm_codeInput_textField'),
          onChanged: (verificationCode) => context
              .read<VerificationCubit>()
              .verificationCodeChanged(verificationCode),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'username',
            helperText: '',
            icon: const Icon(Icons.confirmation_number),
            errorText: state.verificationCode.invalid
                ? 'invalid verification code'
                : null,
          ),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerificationCubit, VerificationState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('verificationForm_submit_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Colors.orangeAccent,
                ),
                onPressed: state.status.isValidated
                    ? () => context
                        .read<VerificationCubit>()
                        .verificationCodeFormSubmitted()
                    : null,
                child: const Text('Verify'),
              );
      },
    );
  }
}

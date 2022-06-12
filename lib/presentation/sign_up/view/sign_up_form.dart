import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/shared.dart';
import 'package:vote_your_face/presentation/routes/router.dart';
import 'package:vote_your_face/presentation/sign_up/cubit/sign_up_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess && state.signUpComplete) {
          context.router.replace(const SplashRoute());
        } else if (state.status.isSubmissionSuccess && !state.signUpComplete) {
          context.router.replace(const VerificationRoute());
        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Failure')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _FormTitle(),
            const Padding(padding: EdgeInsets.all(20)),
            _UsernameInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _EmailInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _PasswordInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _ConfirmPasswordInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class _FormTitle extends StatelessWidget {
  const _FormTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Erstelle einen Account');
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return VecTextFormField(
          key: const Key('signUpForm_usernameInput_textFormField'),
          onChanged: (username) =>
              context.read<SignUpCubit>().usernameChanged(username),
          labelText: 'username',
          errorText: 'invalid username',
          showError: state.username.invalid,
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return VecTextFormField(
          key: const Key('signUpForm_emailInput_textFormField'),
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
          labelText: 'email',
          errorText: 'invalid email',
          showError: state.email.invalid,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return VecTextFormField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<SignUpCubit>().passwordChanged(password),
          labelText: 'password',
          errorText: 'invalid password',
          showError: state.password.invalid,
          obscureText: true,
        );
      },
    );
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return VecTextFormField(
          key: const Key('signUpForm_confirmedPasswordInput_textFormField'),
          onChanged: (confirmPassword) => context
              .read<SignUpCubit>()
              .confirmedPasswordChanged(confirmPassword),
          labelText: 'confirm password',
          errorText: 'passwords do not match',
          showError: state.confirmedPassword.invalid,
          obscureText: true,
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return SubmitButton(
          key: const Key('signUpForm_submitButton'),
          submitText: 'Sign Up',
          onPressed: () {
            context.read<SignUpCubit>().signUpFormSubmitted();
          },
          isDisabled: !state.status.isValidated,
          isLoading: state.status.isSubmissionInProgress,
        );
      },
    );
  }
}

part of 'sign_up_cubit.dart';

enum ConfirmPasswordValidationError { invalid }

class SignUpState extends Equatable {
  const SignUpState({
    this.username = const Username.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmedPassword = const ConfirmedPassword.pure(),
    this.signUpComplete = false,
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final Username username;
  final Email email;
  final Password password;
  final ConfirmedPassword confirmedPassword;
  final bool signUpComplete;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props => [
        username,
        email,
        password,
        confirmedPassword,
        signUpComplete,
        status,
      ];

  SignUpState copyWith({
    Username? username,
    Email? email,
    Password? password,
    ConfirmedPassword? confirmedPassword,
    bool? signUpComplete,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return SignUpState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      signUpComplete: signUpComplete ?? this.signUpComplete,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

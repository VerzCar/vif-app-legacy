part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthFlowStatus.login,
    this.user = User.empty,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.session(User user)
      : this._(status: AuthFlowStatus.session, user: user);

  const AuthenticationState.login() : this._(status: AuthFlowStatus.login);

  const AuthenticationState.verification()
      : this._(status: AuthFlowStatus.verification);

  const AuthenticationState.signup() : this._(status: AuthFlowStatus.signUp);

  final AuthFlowStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}

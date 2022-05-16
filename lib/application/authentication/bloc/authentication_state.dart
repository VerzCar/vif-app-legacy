part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status  = AuthFlowStatus.unknown,
    this.user = User.empty,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(User user)
      : this._(status: AuthFlowStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthFlowStatus.unauthenticated);

  final AuthFlowStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}

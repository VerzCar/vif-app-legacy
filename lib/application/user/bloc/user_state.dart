part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState._({this.user});

  const UserState.metaDataLoaded(User user)
      : this._(user: user);

  final User? user;

  @override
  List<Object?> get props => [user];
}

part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class ProfileUserChanged extends ProfileEvent {
  const ProfileUserChanged(this.user);

  final User user;

  @override
  List<Object> get props => [user];
}

class ProfileUserRequested extends ProfileEvent {}

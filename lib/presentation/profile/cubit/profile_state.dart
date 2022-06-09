part of 'profile_cubit.dart';

enum ProfileStatus { initial, loading, success, failure }

extension ProfileStatusX on ProfileStatus {
  bool get isInitial => this == ProfileStatus.initial;

  bool get isLoading => this == ProfileStatus.loading;

  bool get isSuccess => this == ProfileStatus.success;

  bool get isFailure => this == ProfileStatus.failure;
}

class ProfileState extends Equatable {
  const ProfileState({
    this.status = ProfileStatus.initial,
    User? user,
  }) : user = user ?? User.empty;

  final ProfileStatus status;
  final User user;

  ProfileState copyWith({
    ProfileStatus? status,
    User? user,
  }) {
    return ProfileState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object> get props => [status, user];
}

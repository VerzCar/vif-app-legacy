part of 'profile_edit_cubit.dart';

class ProfileEditState extends Equatable {
  const ProfileEditState({
    this.whyVoteMe = const WhyVoteMe.pure(),
    this.bio = const Bio.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final WhyVoteMe whyVoteMe;
  final Bio bio;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props => [
        whyVoteMe,
        bio,
        status,
      ];

  ProfileEditState copyWith({
    WhyVoteMe? whyVoteMe,
    Bio? bio,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return ProfileEditState(
      whyVoteMe: whyVoteMe ?? this.whyVoteMe,
      bio: bio ?? this.bio,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

part of 'profile_edit_cubit.dart';

class ProfileEditState extends Equatable {
  const ProfileEditState({
    this.whyVoteMe = const WhyVoteMe.pure(),
    this.bio = const Bio.pure(),
    this.imagePath = '',
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final WhyVoteMe whyVoteMe;
  final Bio bio;
  final String imagePath;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props =>
      [
        whyVoteMe,
        bio,
        imagePath,
        status,
      ];

  ProfileEditState copyWith({
    WhyVoteMe? whyVoteMe,
    Bio? bio,
    String? imagePath,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return ProfileEditState(
      whyVoteMe: whyVoteMe ?? this.whyVoteMe,
      bio: bio ?? this.bio,
      imagePath: imagePath ?? this.imagePath,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

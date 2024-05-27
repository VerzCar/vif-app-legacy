import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  const Profile({
    required this.id,
    required this.bio,
    required this.whyVoteMe,
    required this.imageSrc,
    required this.imagePlaceholderColors,
  });

  final int id;
  final String bio;
  final String whyVoteMe;
  final String imageSrc;
  final String imagePlaceholderColors;

  static const empty = Profile(
    id: 0,
    bio: '',
    whyVoteMe: '',
    imageSrc: '',
    imagePlaceholderColors: '',
  );

  @override
  List<Object> get props => [
        id,
        bio,
        whyVoteMe,
        imageSrc,
        imagePlaceholderColors,
      ];
}

class ProfileInput {
  const ProfileInput({
    this.bio,
    this.whyVoteMe,
    this.imageFilePath,
  });

  final String? bio;
  final String? whyVoteMe;
  final String? imageFilePath;
}

import 'package:equatable/equatable.dart';
import 'package:user_api/src/graph/updateUserProfile.graphql.dart';

class Profile extends Equatable {
  Profile({
    required this.id,
    required this.bio,
    required this.whyVoteMe,
    required this.imageSrc,
  });

  final int id;
  final String bio;
  final String whyVoteMe;
  final String imageSrc;

  @override
  List<Object> get props => [
        id,
        bio,
        whyVoteMe,
        imageSrc,
      ];
}

class ProfileInput {
  ProfileInput({
    this.bio,
    this.whyVoteMe,
    this.imageSrc,
  });

  final String? bio;
  final String? whyVoteMe;
  final String? imageSrc;
}

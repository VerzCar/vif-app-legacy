// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateUserProfile.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Mutation$updateUserProfile
    _$Variables$Mutation$updateUserProfileFromJson(Map<String, dynamic> json) =>
        Variables$Mutation$updateUserProfile(
          userInput: Input$UserUpdateInput.fromJson(
              json['userInput'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Variables$Mutation$updateUserProfileToJson(
        Variables$Mutation$updateUserProfile instance) =>
    <String, dynamic>{
      'userInput': instance.userInput.toJson(),
    };

Mutation$updateUserProfile _$Mutation$updateUserProfileFromJson(
        Map<String, dynamic> json) =>
    Mutation$updateUserProfile(
      updateUser: Mutation$updateUserProfile$updateUser.fromJson(
          json['updateUser'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$updateUserProfileToJson(
        Mutation$updateUserProfile instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$updateUserProfile$updateUser
    _$Mutation$updateUserProfile$updateUserFromJson(
            Map<String, dynamic> json) =>
        Mutation$updateUserProfile$updateUser(
          profile: json['profile'] == null
              ? null
              : Mutation$updateUserProfile$updateUser$profile.fromJson(
                  json['profile'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$updateUserProfile$updateUserToJson(
        Mutation$updateUserProfile$updateUser instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$updateUserProfile$updateUser$profile
    _$Mutation$updateUserProfile$updateUser$profileFromJson(
            Map<String, dynamic> json) =>
        Mutation$updateUserProfile$updateUser$profile(
          id: json['id'] as int,
          bio: json['bio'] as String,
          whyVoteMe: json['whyVoteMe'] as String,
          imageSrc: json['imageSrc'] as String,
          imagePlaceholderColors: json['imagePlaceholderColors'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$updateUserProfile$updateUser$profileToJson(
        Mutation$updateUserProfile$updateUser$profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bio': instance.bio,
      'whyVoteMe': instance.whyVoteMe,
      'imageSrc': instance.imageSrc,
      'imagePlaceholderColors': instance.imagePlaceholderColors,
      '__typename': instance.$__typename,
    };

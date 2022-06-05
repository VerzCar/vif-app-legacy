// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$CircleCreateInput _$Input$CircleCreateInputFromJson(
        Map<String, dynamic> json) =>
    Input$CircleCreateInput(
      name: json['name'] as String,
      private: json['private'] as bool?,
      validUntil: json['validUntil'] as String?,
      voters: (json['voters'] as List<dynamic>)
          .map(
              (e) => Input$CircleVoterInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$CircleCreateInputToJson(
        Input$CircleCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'private': instance.private,
      'validUntil': instance.validUntil,
      'voters': instance.voters.map((e) => e.toJson()).toList(),
    };

Input$CircleUpdateInput _$Input$CircleUpdateInputFromJson(
        Map<String, dynamic> json) =>
    Input$CircleUpdateInput(
      name: json['name'] as String?,
      private: json['private'] as bool?,
      validUntil: json['validUntil'] as String?,
      voters: (json['voters'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$CircleVoterInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$CircleUpdateInputToJson(
        Input$CircleUpdateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'private': instance.private,
      'validUntil': instance.validUntil,
      'voters': instance.voters?.map((e) => e?.toJson()).toList(),
    };

Input$CircleVoterInput _$Input$CircleVoterInputFromJson(
        Map<String, dynamic> json) =>
    Input$CircleVoterInput(
      voter: json['voter'] as String,
    );

Map<String, dynamic> _$Input$CircleVoterInputToJson(
        Input$CircleVoterInput instance) =>
    <String, dynamic>{
      'voter': instance.voter,
    };

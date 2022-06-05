// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$circle _$Variables$Query$circleFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$circle(
      id: json['id'] as int,
    );

Map<String, dynamic> _$Variables$Query$circleToJson(
        Variables$Query$circle instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Query$circle _$Query$circleFromJson(Map<String, dynamic> json) => Query$circle(
      circle:
          Query$circle$circle.fromJson(json['circle'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$circleToJson(Query$circle instance) =>
    <String, dynamic>{
      'circle': instance.circle.toJson(),
      '__typename': instance.$__typename,
    };

Query$circle$circle _$Query$circle$circleFromJson(Map<String, dynamic> json) =>
    Query$circle$circle(
      id: json['id'] as int,
      name: json['name'] as String,
      votes: (json['votes'] as List<dynamic>?)
          ?.map((e) =>
              Query$circle$circle$votes.fromJson(e as Map<String, dynamic>))
          .toList(),
      voters: (json['voters'] as List<dynamic>?)
          ?.map((e) =>
              Query$circle$circle$voters.fromJson(e as Map<String, dynamic>))
          .toList(),
      private: json['private'] as bool,
      createdFrom: json['createdFrom'] as String,
      validUntil: json['validUntil'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$circle$circleToJson(
        Query$circle$circle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'votes': instance.votes?.map((e) => e.toJson()).toList(),
      'voters': instance.voters?.map((e) => e.toJson()).toList(),
      'private': instance.private,
      'createdFrom': instance.createdFrom,
      'validUntil': instance.validUntil,
      '__typename': instance.$__typename,
    };

Query$circle$circle$votes _$Query$circle$circle$votesFromJson(
        Map<String, dynamic> json) =>
    Query$circle$circle$votes(
      id: json['id'] as int,
      voter: json['voter'] as String,
      elected: json['elected'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$circle$circle$votesToJson(
        Query$circle$circle$votes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'voter': instance.voter,
      'elected': instance.elected,
      '__typename': instance.$__typename,
    };

Query$circle$circle$voters _$Query$circle$circle$votersFromJson(
        Map<String, dynamic> json) =>
    Query$circle$circle$voters(
      id: json['id'] as int,
      voter: json['voter'] as String,
      committed: json['committed'] as bool,
      rejected: json['rejected'] as bool,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$circle$circle$votersToJson(
        Query$circle$circle$voters instance) =>
    <String, dynamic>{
      'id': instance.id,
      'voter': instance.voter,
      'committed': instance.committed,
      'rejected': instance.rejected,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__typename': instance.$__typename,
    };

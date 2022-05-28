// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$user _$Query$userFromJson(Map<String, dynamic> json) => Query$user(
      user: Query$user$user.fromJson(json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$userToJson(Query$user instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      '__typename': instance.$__typename,
    };

Query$user$user _$Query$user$userFromJson(Map<String, dynamic> json) =>
    Query$user$user(
      id: json['id'] as int,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: $enumDecodeNullable(_$Enum$GenderEnumMap, json['gender'],
          unknownValue: Enum$Gender.$unknown),
      locale: json['locale'] == null
          ? null
          : Query$user$user$locale.fromJson(
              json['locale'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : Query$user$user$contact.fromJson(
              json['contact'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$userToJson(Query$user$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': _$Enum$GenderEnumMap[instance.gender],
      'locale': instance.locale?.toJson(),
      'contact': instance.contact?.toJson(),
      '__typename': instance.$__typename,
    };

const _$Enum$GenderEnumMap = {
  Enum$Gender.MAN: 'MAN',
  Enum$Gender.WOMEN: 'WOMEN',
  Enum$Gender.X: 'X',
  Enum$Gender.$unknown: r'$unknown',
};

Query$user$user$locale _$Query$user$user$localeFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$locale(
      lcidString: json['lcidString'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$localeToJson(
        Query$user$user$locale instance) =>
    <String, dynamic>{
      'lcidString': instance.lcidString,
      '__typename': instance.$__typename,
    };

Query$user$user$contact _$Query$user$user$contactFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$contact(
      email: json['email'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$contactToJson(
        Query$user$user$contact instance) =>
    <String, dynamic>{
      'email': instance.email,
      '__typename': instance.$__typename,
    };

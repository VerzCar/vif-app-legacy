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
      bio: json['bio'] == null
          ? null
          : Query$user$user$bio.fromJson(json['bio'] as Map<String, dynamic>),
      locale: json['locale'] == null
          ? null
          : Query$user$user$locale.fromJson(
              json['locale'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Query$user$user$address.fromJson(
              json['address'] as Map<String, dynamic>),
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
      'bio': instance.bio?.toJson(),
      'locale': instance.locale?.toJson(),
      'address': instance.address?.toJson(),
      'contact': instance.contact?.toJson(),
      '__typename': instance.$__typename,
    };

const _$Enum$GenderEnumMap = {
  Enum$Gender.MAN: 'MAN',
  Enum$Gender.WOMEN: 'WOMEN',
  Enum$Gender.X: 'X',
  Enum$Gender.$unknown: r'$unknown',
};

Query$user$user$bio _$Query$user$user$bioFromJson(Map<String, dynamic> json) =>
    Query$user$user$bio(
      id: json['id'] as int,
      description: json['description'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$bioToJson(
        Query$user$user$bio instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      '__typename': instance.$__typename,
    };

Query$user$user$locale _$Query$user$user$localeFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$locale(
      id: json['id'] as int,
      lcidString: json['lcidString'] as String,
      languageCode: json['languageCode'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$localeToJson(
        Query$user$user$locale instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lcidString': instance.lcidString,
      'languageCode': instance.languageCode,
      '__typename': instance.$__typename,
    };

Query$user$user$address _$Query$user$user$addressFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$address(
      id: json['id'] as int,
      address: json['address'] as String,
      city: json['city'] as String,
      country: Query$user$user$address$country.fromJson(
          json['country'] as Map<String, dynamic>),
      postalCode: json['postalCode'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$addressToJson(
        Query$user$user$address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country.toJson(),
      'postalCode': instance.postalCode,
      '__typename': instance.$__typename,
    };

Query$user$user$address$country _$Query$user$user$address$countryFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$address$country(
      id: json['id'] as int,
      name: json['name'] as String,
      alpha2: json['alpha2'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$address$countryToJson(
        Query$user$user$address$country instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alpha2': instance.alpha2,
      '__typename': instance.$__typename,
    };

Query$user$user$contact _$Query$user$user$contactFromJson(
        Map<String, dynamic> json) =>
    Query$user$user$contact(
      id: json['id'] as int,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      phoneNumber2: json['phoneNumber2'] as String,
      web: json['web'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$user$user$contactToJson(
        Query$user$user$contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'phoneNumber2': instance.phoneNumber2,
      'web': instance.web,
      '__typename': instance.$__typename,
    };

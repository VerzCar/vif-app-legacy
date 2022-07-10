// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$AddressInput _$Input$AddressInputFromJson(Map<String, dynamic> json) =>
    Input$AddressInput(
      address: json['address'] as String,
      city: json['city'] as String,
      countryAlphaCode: json['countryAlphaCode'] as String,
      postalCode: json['postalCode'] as String,
    );

Map<String, dynamic> _$Input$AddressInputToJson(Input$AddressInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'countryAlphaCode': instance.countryAlphaCode,
      'postalCode': instance.postalCode,
    };

Input$ContactInput _$Input$ContactInputFromJson(Map<String, dynamic> json) =>
    Input$ContactInput(
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      phoneNumber2: json['phoneNumber2'] as String?,
      phoneNumber2CountryAlphaCode:
          json['phoneNumber2CountryAlphaCode'] as String?,
      phoneNumberCountryAlphaCode:
          json['phoneNumberCountryAlphaCode'] as String,
      web: json['web'] as String?,
    );

Map<String, dynamic> _$Input$ContactInputToJson(Input$ContactInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'phoneNumber2': instance.phoneNumber2,
      'phoneNumber2CountryAlphaCode': instance.phoneNumber2CountryAlphaCode,
      'phoneNumberCountryAlphaCode': instance.phoneNumberCountryAlphaCode,
      'web': instance.web,
    };

Input$ProfileInput _$Input$ProfileInputFromJson(Map<String, dynamic> json) =>
    Input$ProfileInput(
      bio: json['bio'] as String?,
      imageSrc: json['imageSrc'] as String?,
      whyVoteMe: json['whyVoteMe'] as String?,
    );

Map<String, dynamic> _$Input$ProfileInputToJson(Input$ProfileInput instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'imageSrc': instance.imageSrc,
      'whyVoteMe': instance.whyVoteMe,
    };

Input$UserUpdateInput _$Input$UserUpdateInputFromJson(
        Map<String, dynamic> json) =>
    Input$UserUpdateInput(
      address: json['address'] == null
          ? null
          : Input$AddressInput.fromJson(
              json['address'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : Input$ContactInput.fromJson(
              json['contact'] as Map<String, dynamic>),
      firstName: json['firstName'] as String?,
      gender: $enumDecodeNullable(_$Enum$GenderEnumMap, json['gender'],
          unknownValue: Enum$Gender.$unknown),
      lastName: json['lastName'] as String?,
      locale: json['locale'] as String?,
      profile: json['profile'] == null
          ? null
          : Input$ProfileInput.fromJson(
              json['profile'] as Map<String, dynamic>),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$Input$UserUpdateInputToJson(
        Input$UserUpdateInput instance) =>
    <String, dynamic>{
      'address': instance.address?.toJson(),
      'contact': instance.contact?.toJson(),
      'firstName': instance.firstName,
      'gender': _$Enum$GenderEnumMap[instance.gender],
      'lastName': instance.lastName,
      'locale': instance.locale,
      'profile': instance.profile?.toJson(),
      'username': instance.username,
    };

const _$Enum$GenderEnumMap = {
  Enum$Gender.MAN: 'MAN',
  Enum$Gender.WOMEN: 'WOMEN',
  Enum$Gender.X: 'X',
  Enum$Gender.$unknown: r'$unknown',
};

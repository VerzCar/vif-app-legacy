import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$AddressInput {
  Input$AddressInput(
      {required this.address,
      required this.city,
      required this.countryAlphaCode,
      required this.postalCode});

  @override
  factory Input$AddressInput.fromJson(Map<String, dynamic> json) =>
      _$Input$AddressInputFromJson(json);

  final String address;

  final String city;

  final String countryAlphaCode;

  final String postalCode;

  Map<String, dynamic> toJson() => _$Input$AddressInputToJson(this);
  int get hashCode {
    final l$address = address;
    final l$city = city;
    final l$countryAlphaCode = countryAlphaCode;
    final l$postalCode = postalCode;
    return Object.hashAll(
        [l$address, l$city, l$countryAlphaCode, l$postalCode]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$AddressInput) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$countryAlphaCode = countryAlphaCode;
    final lOther$countryAlphaCode = other.countryAlphaCode;
    if (l$countryAlphaCode != lOther$countryAlphaCode) return false;
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (l$postalCode != lOther$postalCode) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$BioInput {
  Input$BioInput({required this.description});

  @override
  factory Input$BioInput.fromJson(Map<String, dynamic> json) =>
      _$Input$BioInputFromJson(json);

  final String description;

  Map<String, dynamic> toJson() => _$Input$BioInputToJson(this);
  int get hashCode {
    final l$description = description;
    return Object.hashAll([l$description]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$BioInput) || runtimeType != other.runtimeType)
      return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$ContactInput {
  Input$ContactInput(
      {required this.email,
      required this.phoneNumber,
      this.phoneNumber2,
      this.phoneNumber2CountryAlphaCode,
      required this.phoneNumberCountryAlphaCode,
      this.web});

  @override
  factory Input$ContactInput.fromJson(Map<String, dynamic> json) =>
      _$Input$ContactInputFromJson(json);

  final String email;

  final String phoneNumber;

  final String? phoneNumber2;

  final String? phoneNumber2CountryAlphaCode;

  final String phoneNumberCountryAlphaCode;

  final String? web;

  Map<String, dynamic> toJson() => _$Input$ContactInputToJson(this);
  int get hashCode {
    final l$email = email;
    final l$phoneNumber = phoneNumber;
    final l$phoneNumber2 = phoneNumber2;
    final l$phoneNumber2CountryAlphaCode = phoneNumber2CountryAlphaCode;
    final l$phoneNumberCountryAlphaCode = phoneNumberCountryAlphaCode;
    final l$web = web;
    return Object.hashAll([
      l$email,
      l$phoneNumber,
      l$phoneNumber2,
      l$phoneNumber2CountryAlphaCode,
      l$phoneNumberCountryAlphaCode,
      l$web
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ContactInput) || runtimeType != other.runtimeType)
      return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$phoneNumber2 = phoneNumber2;
    final lOther$phoneNumber2 = other.phoneNumber2;
    if (l$phoneNumber2 != lOther$phoneNumber2) return false;
    final l$phoneNumber2CountryAlphaCode = phoneNumber2CountryAlphaCode;
    final lOther$phoneNumber2CountryAlphaCode =
        other.phoneNumber2CountryAlphaCode;
    if (l$phoneNumber2CountryAlphaCode != lOther$phoneNumber2CountryAlphaCode)
      return false;
    final l$phoneNumberCountryAlphaCode = phoneNumberCountryAlphaCode;
    final lOther$phoneNumberCountryAlphaCode =
        other.phoneNumberCountryAlphaCode;
    if (l$phoneNumberCountryAlphaCode != lOther$phoneNumberCountryAlphaCode)
      return false;
    final l$web = web;
    final lOther$web = other.web;
    if (l$web != lOther$web) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$UserUpdateInput {
  Input$UserUpdateInput(
      {this.address,
      this.bio,
      this.contact,
      this.firstName,
      this.gender,
      this.lastName,
      this.locale,
      this.username});

  @override
  factory Input$UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UserUpdateInputFromJson(json);

  final Input$AddressInput? address;

  final Input$BioInput? bio;

  final Input$ContactInput? contact;

  final String? firstName;

  @JsonKey(unknownEnumValue: Enum$Gender.$unknown)
  final Enum$Gender? gender;

  final String? lastName;

  final String? locale;

  final String? username;

  Map<String, dynamic> toJson() => _$Input$UserUpdateInputToJson(this);
  int get hashCode {
    final l$address = address;
    final l$bio = bio;
    final l$contact = contact;
    final l$firstName = firstName;
    final l$gender = gender;
    final l$lastName = lastName;
    final l$locale = locale;
    final l$username = username;
    return Object.hashAll([
      l$address,
      l$bio,
      l$contact,
      l$firstName,
      l$gender,
      l$lastName,
      l$locale,
      l$username
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UserUpdateInput) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$contact = contact;
    final lOther$contact = other.contact;
    if (l$contact != lOther$contact) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    return true;
  }
}

enum Enum$Gender {
  @JsonValue('MAN')
  MAN,
  @JsonValue('WOMEN')
  WOMEN,
  @JsonValue('X')
  X,
  $unknown
}

const possibleTypesMap = {};

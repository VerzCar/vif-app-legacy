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

  Input$AddressInput copyWith(
          {String? address,
          String? city,
          String? countryAlphaCode,
          String? postalCode}) =>
      Input$AddressInput(
          address: address == null ? this.address : address,
          city: city == null ? this.city : city,
          countryAlphaCode: countryAlphaCode == null
              ? this.countryAlphaCode
              : countryAlphaCode,
          postalCode: postalCode == null ? this.postalCode : postalCode);
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

  Input$ContactInput copyWith(
          {String? email,
          String? phoneNumber,
          String? Function()? phoneNumber2,
          String? Function()? phoneNumber2CountryAlphaCode,
          String? phoneNumberCountryAlphaCode,
          String? Function()? web}) =>
      Input$ContactInput(
          email: email == null ? this.email : email,
          phoneNumber: phoneNumber == null ? this.phoneNumber : phoneNumber,
          phoneNumber2:
              phoneNumber2 == null ? this.phoneNumber2 : phoneNumber2(),
          phoneNumber2CountryAlphaCode: phoneNumber2CountryAlphaCode == null
              ? this.phoneNumber2CountryAlphaCode
              : phoneNumber2CountryAlphaCode(),
          phoneNumberCountryAlphaCode: phoneNumberCountryAlphaCode == null
              ? this.phoneNumberCountryAlphaCode
              : phoneNumberCountryAlphaCode,
          web: web == null ? this.web : web());
}

@JsonSerializable(explicitToJson: true)
class Input$ProfileInput {
  Input$ProfileInput({this.bio, this.imageSrc, this.whyVoteMe});

  @override
  factory Input$ProfileInput.fromJson(Map<String, dynamic> json) =>
      _$Input$ProfileInputFromJson(json);

  final String? bio;

  final String? imageSrc;

  final String? whyVoteMe;

  Map<String, dynamic> toJson() => _$Input$ProfileInputToJson(this);
  int get hashCode {
    final l$bio = bio;
    final l$imageSrc = imageSrc;
    final l$whyVoteMe = whyVoteMe;
    return Object.hashAll([l$bio, l$imageSrc, l$whyVoteMe]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProfileInput) || runtimeType != other.runtimeType)
      return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$imageSrc = imageSrc;
    final lOther$imageSrc = other.imageSrc;
    if (l$imageSrc != lOther$imageSrc) return false;
    final l$whyVoteMe = whyVoteMe;
    final lOther$whyVoteMe = other.whyVoteMe;
    if (l$whyVoteMe != lOther$whyVoteMe) return false;
    return true;
  }

  Input$ProfileInput copyWith(
          {String? Function()? bio,
          String? Function()? imageSrc,
          String? Function()? whyVoteMe}) =>
      Input$ProfileInput(
          bio: bio == null ? this.bio : bio(),
          imageSrc: imageSrc == null ? this.imageSrc : imageSrc(),
          whyVoteMe: whyVoteMe == null ? this.whyVoteMe : whyVoteMe());
}

@JsonSerializable(explicitToJson: true)
class Input$UserUpdateInput {
  Input$UserUpdateInput(
      {this.address,
      this.contact,
      this.firstName,
      this.gender,
      this.lastName,
      this.locale,
      this.profile,
      this.username});

  @override
  factory Input$UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UserUpdateInputFromJson(json);

  final Input$AddressInput? address;

  final Input$ContactInput? contact;

  final String? firstName;

  @JsonKey(unknownEnumValue: Enum$Gender.$unknown)
  final Enum$Gender? gender;

  final String? lastName;

  final String? locale;

  final Input$ProfileInput? profile;

  final String? username;

  Map<String, dynamic> toJson() => _$Input$UserUpdateInputToJson(this);
  int get hashCode {
    final l$address = address;
    final l$contact = contact;
    final l$firstName = firstName;
    final l$gender = gender;
    final l$lastName = lastName;
    final l$locale = locale;
    final l$profile = profile;
    final l$username = username;
    return Object.hashAll([
      l$address,
      l$contact,
      l$firstName,
      l$gender,
      l$lastName,
      l$locale,
      l$profile,
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
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    return true;
  }

  Input$UserUpdateInput copyWith(
          {Input$AddressInput? Function()? address,
          Input$ContactInput? Function()? contact,
          String? Function()? firstName,
          Enum$Gender? Function()? gender,
          String? Function()? lastName,
          String? Function()? locale,
          Input$ProfileInput? Function()? profile,
          String? Function()? username}) =>
      Input$UserUpdateInput(
          address: address == null ? this.address : address(),
          contact: contact == null ? this.contact : contact(),
          firstName: firstName == null ? this.firstName : firstName(),
          gender: gender == null ? this.gender : gender(),
          lastName: lastName == null ? this.lastName : lastName(),
          locale: locale == null ? this.locale : locale(),
          profile: profile == null ? this.profile : profile(),
          username: username == null ? this.username : username());
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

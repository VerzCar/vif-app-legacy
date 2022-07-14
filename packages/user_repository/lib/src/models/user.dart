import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.profile,
    required this.locale,
    required this.address,
    required this.contact,
  });

  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String gender;
  final Profile profile;
  final Locale locale;
  final Address address;
  final Contact contact;

  static const empty = User(
    id: 0,
    username: '',
    firstName: '',
    lastName: '',
    gender: '',
    profile: Profile.empty,
    locale: Locale.empty,
    address: Address.empty,
    contact: Contact.empty,
  );

  bool get isEmpty => this == User.empty;

  User copyWith({
    int? id,
    String? username,
    String? firstName,
    String? lastName,
    String? gender,
    Profile? profile,
    Locale? locale,
    Address? address,
    Contact? contact,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      profile: profile ?? this.profile,
      locale: locale ?? this.locale,
      address: address ?? this.address,
      contact: contact ?? this.contact,
    );
  }

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        gender,
        profile,
        locale,
        address,
        contact,
      ];
}

import 'package:equatable/equatable.dart';
import 'locale.dart';
import 'contact.dart';
import 'bio.dart';
import 'address.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.bio,
    required this.locale,
    required this.address,
    required this.contact,
  });

  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String gender;
  final Bio bio;
  final Locale locale;
  final Address address;
  final Contact contact;

  static const empty = User(
    id: 0,
    username: '',
    firstName: '',
    lastName: '',
    gender: '',
    bio: Bio.empty,
    locale: Locale.empty,
    address: Address.empty,
    contact: Contact.empty,
  );

  bool get isEmpty => this == User.empty;

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        gender,
        locale,
        contact,
      ];
}

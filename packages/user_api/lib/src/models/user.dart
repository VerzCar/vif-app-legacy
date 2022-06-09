import 'package:equatable/equatable.dart';
import 'locale.dart';
import 'contact.dart';
import 'bio.dart';
import 'address.dart';

class User extends Equatable {
  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.gender,
    this.bio,
    this.locale,
    this.address,
    this.contact,
  });

  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String gender;
  final Bio? bio;
  final Locale? locale;
  final Address? address;
  final Contact? contact;

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

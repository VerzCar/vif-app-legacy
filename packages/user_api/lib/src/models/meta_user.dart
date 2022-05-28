import 'package:equatable/equatable.dart';
import 'locale.dart';
import 'contact.dart';

class MetaUser extends Equatable {
  MetaUser({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.locale,
    required this.contact,
  });

  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String gender;
  final Locale locale;
  final Contact contact;

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

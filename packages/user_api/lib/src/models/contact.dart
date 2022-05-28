import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  Contact({
    required this.email,
  });

  final String email;

  @override
  List<Object?> get props => [email];
}

import 'package:equatable/equatable.dart';

class Locale extends Equatable {
  Locale({
    required this.lcidString,
  });

  final String lcidString;

  @override
  List<Object?> get props => [lcidString];
}

import 'package:equatable/equatable.dart';

class Locale extends Equatable {
  const Locale({
    required this.id,
    required this.lcidString,
    required this.languageCode,
  });

  final int id;
  final String lcidString;
  final String languageCode;

  static const empty = Locale(
    id: 0,
    lcidString: '',
    languageCode: '',
  );

  @override
  List<Object> get props => [
        id,
        lcidString,
        languageCode,
      ];
}

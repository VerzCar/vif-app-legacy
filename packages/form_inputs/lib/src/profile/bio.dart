import 'package:formz/formz.dart';

/// Validation errors for the [bio] [FormzInput].
enum BioValidationError {
  /// Generic invalid error.
  invalid,

  /// Past over max length
  maxLength,
}

/// {@template email}
/// Form input for an bio input.
/// {@endtemplate}
class Bio extends FormzInput<String, BioValidationError> {
  const Bio.pure() : super.pure('');

  const Bio.dirty([String value = '']) : super.dirty(value);

  /// max length of input
  static const int maxLength = 200;

  @override
  BioValidationError? validator(String? value) {
    final inputValue = value ?? '';

    if (inputValue.length > maxLength) {
      return BioValidationError.maxLength;
    }
    return null;
  }
}

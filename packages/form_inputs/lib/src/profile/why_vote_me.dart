import 'package:formz/formz.dart';

/// Validation errors for the [why vote me] [FormzInput].
enum WhyVoteMeValidationError {
  /// Generic invalid error.
  invalid,

  /// Past over max length
  maxLength,
}

/// {@template email}
/// Form input for an why vote me input.
/// {@endtemplate}
class WhyVoteMe extends FormzInput<String, WhyVoteMeValidationError> {
  const WhyVoteMe.pure() : super.pure('');

  const WhyVoteMe.dirty([String value = '']) : super.dirty(value);

  /// max length of input
  static const int maxLength = 50;

  @override
  WhyVoteMeValidationError? validator(String? value) {
    final inputValue = value ?? '';

    if (inputValue.length > maxLength) {
      return WhyVoteMeValidationError.maxLength;
    }
    return null;
  }
}

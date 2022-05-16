import 'package:formz/formz.dart';

/// Validation errors for the [VerificationCode] [FormzInput].
enum VerificationCodeValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template verificationCode}
/// Form input for an verification code input.
/// {@endtemplate}
class VerificationCode
    extends FormzInput<String, VerificationCodeValidationError> {
  /// {@macro verificationCode}
  const VerificationCode.pure() : super.pure('');

  /// {@macro verificationCode}
  const VerificationCode.dirty([String value = '']) : super.dirty(value);

  static final RegExp _verificationCodeRegExp = RegExp(
    r'^\d*$',
  );

  @override
  VerificationCodeValidationError? validator(String? value) {
    return _verificationCodeRegExp.hasMatch(value ?? '') && _checkLength(value)
        ? null
        : VerificationCodeValidationError.invalid;
  }

  bool _checkLength(String? value) {
    return (value?.length ?? 0) <= 6;
  }
}

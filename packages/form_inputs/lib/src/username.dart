import 'package:formz/formz.dart';

/// Validation errors for the [Username] [FormzInput].
enum UsernameValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template email}
/// Form input for an username input.
/// {@endtemplate}
class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  
  const Username.dirty([String value = '']) : super.dirty(value);

  static final RegExp _usernameRegExp = RegExp(
    r'^[a-zA-Z0-9]*$',
  );

  @override
  UsernameValidationError? validator(String? value) {
    return _usernameRegExp.hasMatch(value ?? '')
        ? null
        : UsernameValidationError.invalid;
  }
}

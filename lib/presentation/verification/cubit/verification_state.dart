part of 'verification_cubit.dart';

class VerificationState extends Equatable {
  const VerificationState({
    this.verificationCode = const VerificationCode.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final VerificationCode verificationCode;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props => [
        verificationCode,
        status,
      ];

  VerificationState copyWith({
    VerificationCode? verificationCode,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return VerificationState(
      verificationCode: verificationCode ?? this.verificationCode,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

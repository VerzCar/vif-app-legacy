import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit(this._authenticationRepository)
      : super(const VerificationState());

  final AuthenticationRepository _authenticationRepository;

  void verificationCodeChanged(String value) {
    final verificationCode = VerificationCode.dirty(value);
    emit(
      state.copyWith(
        verificationCode: verificationCode,
        status: Formz.validate([
          verificationCode,
        ]),
      ),
    );
  }

  Future<void> verificationCodeFormSubmitted() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authenticationRepository.verifyCode(state.verificationCode.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}

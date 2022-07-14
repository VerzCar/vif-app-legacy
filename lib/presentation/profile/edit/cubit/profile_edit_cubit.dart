import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

part 'profile_edit_state.dart';

class ProfileEditCubit extends Cubit<ProfileEditState> {
  ProfileEditCubit(
    this._userRepository,
  ) : super(const ProfileEditState());

  final UserRepository _userRepository;

  void whyVoteMeChanged(String value) {
    final whyVoteMe = WhyVoteMe.dirty(value);
    emit(
      state.copyWith(
        whyVoteMe: whyVoteMe,
        status: Formz.validate([
          whyVoteMe,
          state.bio,
        ]),
      ),
    );
  }

  void bioChanged(String value) {
    final bio = Bio.dirty(value);
    emit(
      state.copyWith(
        bio: bio,
        status: Formz.validate([
          state.whyVoteMe,
          bio,
        ]),
      ),
    );
  }

  Future<void> formSubmitted() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final profileInput = ProfileInput(
        whyVoteMe: state.whyVoteMe.value.isEmpty ? null : state.whyVoteMe.value,
        bio: state.bio.value.isEmpty ? null : state.bio.value,
      );

      await _userRepository.updateUserProfile(profileInput);

      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on UpdateUserProfileFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: FormzStatus.submissionFailure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}

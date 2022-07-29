import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const ProfileState()) {
    on<ProfileUserChanged>(_onProfileUserChanged);
    on<ProfileUserRequested>(_onProfileUserRequested);

    _userSubscription = _userRepository.user.listen(
      (user) => add(ProfileUserChanged(user)),
    );
  }

  final UserRepository _userRepository;
  late StreamSubscription<User> _userSubscription;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    _userRepository.dispose();
    return super.close();
  }

  void _onProfileUserChanged(
    ProfileUserChanged event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(user: event.user));
  }

  void _onProfileUserRequested(
    ProfileUserRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));

    try {
      await _userRepository.fetchUser();
      emit(
        state.copyWith(status: ProfileStatus.success),
      );
    } on Exception {
      emit(state.copyWith(status: ProfileStatus.failure));
    }
  }
}

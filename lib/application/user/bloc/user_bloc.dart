import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const UserState._()) {
    on<MetaUserDataRequested>(_onMetaUserDataRequested);
  }

  final UserRepository _userRepository;

  void _onMetaUserDataRequested(
    MetaUserDataRequested event,
    Emitter<UserState> emit,
  ) async {
    try {
      final user = await _userRepository.fetchUser();
      emit(UserState.metaDataLoaded(user));
    } catch (_) {
      return null;
    }
  }
}

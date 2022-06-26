import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vote_circle_repository/vote_circle_repository.dart';

part 'circle_detail_state.dart';

part 'circle_detail_event.dart';

class CircleDetailBloc extends Bloc<CircleDetailEvent, CircleDetailState> {
  CircleDetailBloc({
    required VoteCircleRepository voteCircleRepository,
  })  : _voteCircleRepository = voteCircleRepository,
        super(const CircleDetailState()) {
    on<CircleDetailStarted>(_onCircleDetailStarted);
  }

  final VoteCircleRepository _voteCircleRepository;

  void _onCircleDetailStarted(
    CircleDetailStarted event,
    Emitter<CircleDetailState> emit,
  ) async {
    try {
      emit(state.copyWith(status: CircleDetailStatus.loading));
      final circle = await _voteCircleRepository.circle(event.id);
      emit(state.copyWith(status: CircleDetailStatus.success, circle: circle));
    } catch (_) {
      emit(state.copyWith(status: CircleDetailStatus.failure));
    }
  }
}

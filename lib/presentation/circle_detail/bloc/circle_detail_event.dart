part of 'circle_detail_bloc.dart';

abstract class CircleDetailEvent extends Equatable {
  const CircleDetailEvent();

  @override
  List<Object> get props => [];
}

class CircleDetailStarted extends CircleDetailEvent {
  const CircleDetailStarted(this.id);

  final int id;

  @override
  List<Object> get props => [id];
}
part of 'circle_detail_bloc.dart';

enum CircleDetailStatus { initial, loading, success, failure }

extension CircleDetailStatusX on CircleDetailStatus {
  bool get isInitial => this == CircleDetailStatus.initial;

  bool get isLoading => this == CircleDetailStatus.loading;

  bool get isSuccess => this == CircleDetailStatus.success;

  bool get isFailure => this == CircleDetailStatus.failure;
}

class CircleDetailState extends Equatable {
  const CircleDetailState({
    this.status = CircleDetailStatus.initial,
    Circle? circle,
  }) : circle = circle ?? Circle.empty;

  final CircleDetailStatus status;
  final Circle circle;

  CircleDetailState copyWith({
    CircleDetailStatus? status,
    Circle? circle,
  }) {
    return CircleDetailState(
      status: status ?? this.status,
      circle: circle ?? this.circle,
    );
  }

  @override
  List<Object> get props => [circle, status];
}

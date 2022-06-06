import 'package:equatable/equatable.dart';
import 'circle_voter.dart';
import 'vote.dart';

class Circle extends Equatable {
  const Circle({
    required this.id,
    required this.name,
    required this.voters,
    required this.private,
    required this.createdFrom,
    this.votes,
    this.validUntil,
  });

  final int id;

  final String name;

  final List<Vote>? votes;

  final List<CircleVoter> voters;

  final bool private;

  final String createdFrom;

  final DateTime? validUntil;

  static const empty = Circle(
    id: 0,
    name: '',
    voters: [],
    private: false,
    createdFrom: '',
  );

  bool get isEmpty => this == Circle.empty;

  @override
  List<Object?> get props => [
        id,
        name,
        votes,
        voters,
        private,
        createdFrom,
        validUntil,
      ];
}

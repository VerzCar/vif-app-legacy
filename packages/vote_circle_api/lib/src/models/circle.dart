import 'package:equatable/equatable.dart';
import 'circle_voter.dart';
import 'vote.dart';

class Circle extends Equatable {
  Circle({
    required this.id,
    required this.name,
    required this.votes,
    required this.voters,
    required this.private,
    required this.createdFrom,
    this.validUntil,
  });

  final int id;

  final String name;

  final List<Vote?> votes;

  final List<CircleVoter?> voters;

  final bool private;

  final String createdFrom;

  final DateTime? validUntil;

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

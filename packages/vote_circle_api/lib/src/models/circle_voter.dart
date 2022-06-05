import 'package:equatable/equatable.dart';

class CircleVoter extends Equatable {
  CircleVoter({
    required this.id,
    required this.voter,
    required this.committed,
    required this.rejected,
    this.createdAt,
    this.updatedAt,
  });

  final int id;

  final String voter;

  final bool committed;

  final bool rejected;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
        id,
        voter,
        committed,
        rejected,
        createdAt,
        updatedAt,
      ];
}

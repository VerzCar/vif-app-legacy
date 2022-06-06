import 'package:equatable/equatable.dart';

class Vote extends Equatable {
  Vote({
    required this.id,
    required this.voter,
    required this.elected,
  });

  final int id;

  final String voter;

  final String elected;

  @override
  List<Object?> get props => [
        id,
        voter,
        elected,
      ];
}

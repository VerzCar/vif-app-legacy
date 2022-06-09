import 'package:equatable/equatable.dart';

class Bio extends Equatable {
  Bio({
    required this.id,
    required this.description,
  });

  final int id;
  final String description;

  @override
  List<Object> get props => [
        id,
        description,
      ];
}

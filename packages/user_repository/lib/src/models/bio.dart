import 'package:equatable/equatable.dart';

class Bio extends Equatable {
  const Bio({
    required this.id,
    required this.description,
  });

  final int id;
  final String description;

  static const empty = Bio(
    id: 0,
    description: '',
  );

  @override
  List<Object> get props => [
        id,
        description,
      ];
}

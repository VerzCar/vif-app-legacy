import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$CircleCreateInput {
  Input$CircleCreateInput(
      {required this.name,
      this.private,
      this.validUntil,
      required this.voters});

  @override
  factory Input$CircleCreateInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CircleCreateInputFromJson(json);

  final String name;

  final bool? private;

  final String? validUntil;

  final List<Input$CircleVoterInput> voters;

  Map<String, dynamic> toJson() => _$Input$CircleCreateInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$private = private;
    final l$validUntil = validUntil;
    final l$voters = voters;
    return Object.hashAll([
      l$name,
      l$private,
      l$validUntil,
      Object.hashAll(l$voters.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CircleCreateInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) return false;
    final l$validUntil = validUntil;
    final lOther$validUntil = other.validUntil;
    if (l$validUntil != lOther$validUntil) return false;
    final l$voters = voters;
    final lOther$voters = other.voters;
    if (l$voters.length != lOther$voters.length) return false;
    for (int i = 0; i < l$voters.length; i++) {
      final l$voters$entry = l$voters[i];
      final lOther$voters$entry = lOther$voters[i];
      if (l$voters$entry != lOther$voters$entry) return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$CircleUpdateInput {
  Input$CircleUpdateInput(
      {this.name, this.private, this.validUntil, this.voters});

  @override
  factory Input$CircleUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CircleUpdateInputFromJson(json);

  final String? name;

  final bool? private;

  final String? validUntil;

  final List<Input$CircleVoterInput>? voters;

  Map<String, dynamic> toJson() => _$Input$CircleUpdateInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$private = private;
    final l$validUntil = validUntil;
    final l$voters = voters;
    return Object.hashAll([
      l$name,
      l$private,
      l$validUntil,
      l$voters == null ? null : Object.hashAll(l$voters.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CircleUpdateInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) return false;
    final l$validUntil = validUntil;
    final lOther$validUntil = other.validUntil;
    if (l$validUntil != lOther$validUntil) return false;
    final l$voters = voters;
    final lOther$voters = other.voters;
    if (l$voters != null && lOther$voters != null) {
      if (l$voters.length != lOther$voters.length) return false;
      for (int i = 0; i < l$voters.length; i++) {
        final l$voters$entry = l$voters[i];
        final lOther$voters$entry = lOther$voters[i];
        if (l$voters$entry != lOther$voters$entry) return false;
      }
    } else if (l$voters != lOther$voters) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Input$CircleVoterInput {
  Input$CircleVoterInput({required this.voter});

  @override
  factory Input$CircleVoterInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CircleVoterInputFromJson(json);

  final String voter;

  Map<String, dynamic> toJson() => _$Input$CircleVoterInputToJson(this);
  int get hashCode {
    final l$voter = voter;
    return Object.hashAll([l$voter]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CircleVoterInput) || runtimeType != other.runtimeType)
      return false;
    final l$voter = voter;
    final lOther$voter = other.voter;
    if (l$voter != lOther$voter) return false;
    return true;
  }
}

const possibleTypesMap = {};

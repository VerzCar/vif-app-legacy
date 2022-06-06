import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'circle.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$circle {
  Variables$Query$circle({required this.id});

  @override
  factory Variables$Query$circle.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$circleFromJson(json);

  final int id;

  Map<String, dynamic> toJson() => _$Variables$Query$circleToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$circle) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class Query$circle {
  Query$circle({required this.circle, required this.$__typename});

  @override
  factory Query$circle.fromJson(Map<String, dynamic> json) =>
      _$Query$circleFromJson(json);

  final Query$circle$circle circle;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$circleToJson(this);
  int get hashCode {
    final l$circle = circle;
    final l$$__typename = $__typename;
    return Object.hashAll([l$circle, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$circle) || runtimeType != other.runtimeType)
      return false;
    final l$circle = circle;
    final lOther$circle = other.circle;
    if (l$circle != lOther$circle) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$circle on Query$circle {
  Query$circle copyWith({Query$circle$circle? circle, String? $__typename}) =>
      Query$circle(
          circle: circle == null ? this.circle : circle,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentcircle = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'circle'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'circle'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'votes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'voter'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'elected'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'voters'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'voter'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'committed'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'rejected'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'updatedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'private'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdFrom'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'validUntil'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$circle _parserFn$Query$circle(Map<String, dynamic> data) =>
    Query$circle.fromJson(data);

class Options$Query$circle extends graphql.QueryOptions<Query$circle> {
  Options$Query$circle(
      {String? operationName,
      required Variables$Query$circle variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: queryDocumentcircle,
            parserFn: _parserFn$Query$circle);
}

class WatchOptions$Query$circle
    extends graphql.WatchQueryOptions<Query$circle> {
  WatchOptions$Query$circle(
      {String? operationName,
      required Variables$Query$circle variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: queryDocumentcircle,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$circle);
}

class FetchMoreOptions$Query$circle extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$circle(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$circle variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: queryDocumentcircle);
}

extension ClientExtension$Query$circle on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$circle>> query$circle(
          Options$Query$circle options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$circle> watchQuery$circle(
          WatchOptions$Query$circle options) =>
      this.watchQuery(options);
  void writeQuery$circle(
          {required Query$circle data,
          required Variables$Query$circle variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentcircle),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$circle? readQuery$circle(
      {required Variables$Query$circle variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentcircle),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$circle.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Query$circle$circle {
  Query$circle$circle(
      {required this.id,
      required this.name,
      this.votes,
      required this.voters,
      required this.private,
      required this.createdFrom,
      this.validUntil,
      required this.$__typename});

  @override
  factory Query$circle$circle.fromJson(Map<String, dynamic> json) =>
      _$Query$circle$circleFromJson(json);

  final int id;

  final String name;

  final List<Query$circle$circle$votes>? votes;

  final List<Query$circle$circle$voters> voters;

  final bool private;

  final String createdFrom;

  final String? validUntil;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$circle$circleToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$votes = votes;
    final l$voters = voters;
    final l$private = private;
    final l$createdFrom = createdFrom;
    final l$validUntil = validUntil;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$votes == null ? null : Object.hashAll(l$votes.map((v) => v)),
      Object.hashAll(l$voters.map((v) => v)),
      l$private,
      l$createdFrom,
      l$validUntil,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$circle$circle) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$votes = votes;
    final lOther$votes = other.votes;
    if (l$votes != null && lOther$votes != null) {
      if (l$votes.length != lOther$votes.length) return false;
      for (int i = 0; i < l$votes.length; i++) {
        final l$votes$entry = l$votes[i];
        final lOther$votes$entry = lOther$votes[i];
        if (l$votes$entry != lOther$votes$entry) return false;
      }
    } else if (l$votes != lOther$votes) {
      return false;
    }

    final l$voters = voters;
    final lOther$voters = other.voters;
    if (l$voters.length != lOther$voters.length) return false;
    for (int i = 0; i < l$voters.length; i++) {
      final l$voters$entry = l$voters[i];
      final lOther$voters$entry = lOther$voters[i];
      if (l$voters$entry != lOther$voters$entry) return false;
    }

    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) return false;
    final l$createdFrom = createdFrom;
    final lOther$createdFrom = other.createdFrom;
    if (l$createdFrom != lOther$createdFrom) return false;
    final l$validUntil = validUntil;
    final lOther$validUntil = other.validUntil;
    if (l$validUntil != lOther$validUntil) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$circle$circle on Query$circle$circle {
  Query$circle$circle copyWith(
          {int? id,
          String? name,
          List<Query$circle$circle$votes>? Function()? votes,
          List<Query$circle$circle$voters>? voters,
          bool? private,
          String? createdFrom,
          String? Function()? validUntil,
          String? $__typename}) =>
      Query$circle$circle(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          votes: votes == null ? this.votes : votes(),
          voters: voters == null ? this.voters : voters,
          private: private == null ? this.private : private,
          createdFrom: createdFrom == null ? this.createdFrom : createdFrom,
          validUntil: validUntil == null ? this.validUntil : validUntil(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$circle$circle$votes {
  Query$circle$circle$votes(
      {required this.id,
      required this.voter,
      required this.elected,
      required this.$__typename});

  @override
  factory Query$circle$circle$votes.fromJson(Map<String, dynamic> json) =>
      _$Query$circle$circle$votesFromJson(json);

  final int id;

  final String voter;

  final String elected;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$circle$circle$votesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$voter = voter;
    final l$elected = elected;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$voter, l$elected, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$circle$circle$votes) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$voter = voter;
    final lOther$voter = other.voter;
    if (l$voter != lOther$voter) return false;
    final l$elected = elected;
    final lOther$elected = other.elected;
    if (l$elected != lOther$elected) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$circle$circle$votes
    on Query$circle$circle$votes {
  Query$circle$circle$votes copyWith(
          {int? id, String? voter, String? elected, String? $__typename}) =>
      Query$circle$circle$votes(
          id: id == null ? this.id : id,
          voter: voter == null ? this.voter : voter,
          elected: elected == null ? this.elected : elected,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$circle$circle$voters {
  Query$circle$circle$voters(
      {required this.id,
      required this.voter,
      required this.committed,
      required this.rejected,
      this.createdAt,
      this.updatedAt,
      required this.$__typename});

  @override
  factory Query$circle$circle$voters.fromJson(Map<String, dynamic> json) =>
      _$Query$circle$circle$votersFromJson(json);

  final int id;

  final String voter;

  final bool committed;

  final bool rejected;

  final String? createdAt;

  final String? updatedAt;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$circle$circle$votersToJson(this);
  int get hashCode {
    final l$id = id;
    final l$voter = voter;
    final l$committed = committed;
    final l$rejected = rejected;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$voter,
      l$committed,
      l$rejected,
      l$createdAt,
      l$updatedAt,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$circle$circle$voters) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$voter = voter;
    final lOther$voter = other.voter;
    if (l$voter != lOther$voter) return false;
    final l$committed = committed;
    final lOther$committed = other.committed;
    if (l$committed != lOther$committed) return false;
    final l$rejected = rejected;
    final lOther$rejected = other.rejected;
    if (l$rejected != lOther$rejected) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$circle$circle$voters
    on Query$circle$circle$voters {
  Query$circle$circle$voters copyWith(
          {int? id,
          String? voter,
          bool? committed,
          bool? rejected,
          String? Function()? createdAt,
          String? Function()? updatedAt,
          String? $__typename}) =>
      Query$circle$circle$voters(
          id: id == null ? this.id : id,
          voter: voter == null ? this.voter : voter,
          committed: committed == null ? this.committed : committed,
          rejected: rejected == null ? this.rejected : rejected,
          createdAt: createdAt == null ? this.createdAt : createdAt(),
          updatedAt: updatedAt == null ? this.updatedAt : updatedAt(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

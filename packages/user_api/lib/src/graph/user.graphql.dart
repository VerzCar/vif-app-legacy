import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'user.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$user {
  Query$user({required this.user, required this.$__typename});

  @override
  factory Query$user.fromJson(Map<String, dynamic> json) =>
      _$Query$userFromJson(json);

  final Query$user$user user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$userToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user on Query$user {
  Query$user copyWith({Query$user$user? user, String? $__typename}) =>
      Query$user(
          user: user == null ? this.user : user,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const queryDocumentuser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'user'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'user'),
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
                  name: NameNode(value: 'username'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'firstName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'lastName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'gender'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'locale'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'lcidString'),
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
                  name: NameNode(value: 'contact'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'email'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$user _parserFn$Query$user(Map<String, dynamic> data) =>
    Query$user.fromJson(data);

class Options$Query$user extends graphql.QueryOptions<Query$user> {
  Options$Query$user(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: queryDocumentuser,
            parserFn: _parserFn$Query$user);
}

class WatchOptions$Query$user extends graphql.WatchQueryOptions<Query$user> {
  WatchOptions$Query$user(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: queryDocumentuser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$user);
}

class FetchMoreOptions$Query$user extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$user({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: queryDocumentuser);
}

extension ClientExtension$Query$user on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$user>> query$user(
          [Options$Query$user? options]) async =>
      await this.query(options ?? Options$Query$user());
  graphql.ObservableQuery<Query$user> watchQuery$user(
          [WatchOptions$Query$user? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$user());
  void writeQuery$user({required Query$user data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: queryDocumentuser)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$user? readQuery$user({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: queryDocumentuser)),
        optimistic: optimistic);
    return result == null ? null : Query$user.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Query$user$user {
  Query$user$user(
      {required this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.gender,
      this.locale,
      this.contact,
      required this.$__typename});

  @override
  factory Query$user$user.fromJson(Map<String, dynamic> json) =>
      _$Query$user$userFromJson(json);

  final int id;

  final String? username;

  final String? firstName;

  final String? lastName;

  @JsonKey(unknownEnumValue: Enum$Gender.$unknown)
  final Enum$Gender? gender;

  final Query$user$user$locale? locale;

  final Query$user$user$contact? contact;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$gender = gender;
    final l$locale = locale;
    final l$contact = contact;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$firstName,
      l$lastName,
      l$gender,
      l$locale,
      l$contact,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) return false;
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) return false;
    final l$contact = contact;
    final lOther$contact = other.contact;
    if (l$contact != lOther$contact) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user on Query$user$user {
  Query$user$user copyWith(
          {int? id,
          String? Function()? username,
          String? Function()? firstName,
          String? Function()? lastName,
          Enum$Gender? Function()? gender,
          Query$user$user$locale? Function()? locale,
          Query$user$user$contact? Function()? contact,
          String? $__typename}) =>
      Query$user$user(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username(),
          firstName: firstName == null ? this.firstName : firstName(),
          lastName: lastName == null ? this.lastName : lastName(),
          gender: gender == null ? this.gender : gender(),
          locale: locale == null ? this.locale : locale(),
          contact: contact == null ? this.contact : contact(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$locale {
  Query$user$user$locale({required this.lcidString, required this.$__typename});

  @override
  factory Query$user$user$locale.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$localeFromJson(json);

  final String lcidString;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$localeToJson(this);
  int get hashCode {
    final l$lcidString = lcidString;
    final l$$__typename = $__typename;
    return Object.hashAll([l$lcidString, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$locale) || runtimeType != other.runtimeType)
      return false;
    final l$lcidString = lcidString;
    final lOther$lcidString = other.lcidString;
    if (l$lcidString != lOther$lcidString) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$locale on Query$user$user$locale {
  Query$user$user$locale copyWith({String? lcidString, String? $__typename}) =>
      Query$user$user$locale(
          lcidString: lcidString == null ? this.lcidString : lcidString,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$contact {
  Query$user$user$contact({required this.email, required this.$__typename});

  @override
  factory Query$user$user$contact.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$contactFromJson(json);

  final String email;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$contactToJson(this);
  int get hashCode {
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$contact) || runtimeType != other.runtimeType)
      return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$contact on Query$user$user$contact {
  Query$user$user$contact copyWith({String? email, String? $__typename}) =>
      Query$user$user$contact(
          email: email == null ? this.email : email,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

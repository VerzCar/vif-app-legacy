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
                  name: NameNode(value: 'bio'),
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
                        name: NameNode(value: 'description'),
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
                  name: NameNode(value: 'locale'),
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
                        name: NameNode(value: 'lcidString'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'languageCode'),
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
                  name: NameNode(value: 'address'),
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
                        name: NameNode(value: 'address'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'city'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'country'),
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
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'alpha2'),
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
                        name: NameNode(value: 'postalCode'),
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
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'email'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'phoneNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'phoneNumber2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'web'),
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
      this.bio,
      this.locale,
      this.address,
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

  final Query$user$user$bio? bio;

  final Query$user$user$locale? locale;

  final Query$user$user$address? address;

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
    final l$bio = bio;
    final l$locale = locale;
    final l$address = address;
    final l$contact = contact;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$firstName,
      l$lastName,
      l$gender,
      l$bio,
      l$locale,
      l$address,
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
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
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
          Query$user$user$bio? Function()? bio,
          Query$user$user$locale? Function()? locale,
          Query$user$user$address? Function()? address,
          Query$user$user$contact? Function()? contact,
          String? $__typename}) =>
      Query$user$user(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username(),
          firstName: firstName == null ? this.firstName : firstName(),
          lastName: lastName == null ? this.lastName : lastName(),
          gender: gender == null ? this.gender : gender(),
          bio: bio == null ? this.bio : bio(),
          locale: locale == null ? this.locale : locale(),
          address: address == null ? this.address : address(),
          contact: contact == null ? this.contact : contact(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$bio {
  Query$user$user$bio(
      {required this.id, required this.description, required this.$__typename});

  @override
  factory Query$user$user$bio.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$bioFromJson(json);

  final int id;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$bioToJson(this);
  int get hashCode {
    final l$id = id;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$bio) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$bio on Query$user$user$bio {
  Query$user$user$bio copyWith(
          {int? id, String? description, String? $__typename}) =>
      Query$user$user$bio(
          id: id == null ? this.id : id,
          description: description == null ? this.description : description,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$locale {
  Query$user$user$locale(
      {required this.id,
      required this.lcidString,
      required this.languageCode,
      required this.$__typename});

  @override
  factory Query$user$user$locale.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$localeFromJson(json);

  final int id;

  final String lcidString;

  final String languageCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$localeToJson(this);
  int get hashCode {
    final l$id = id;
    final l$lcidString = lcidString;
    final l$languageCode = languageCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$lcidString, l$languageCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$locale) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$lcidString = lcidString;
    final lOther$lcidString = other.lcidString;
    if (l$lcidString != lOther$lcidString) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$locale on Query$user$user$locale {
  Query$user$user$locale copyWith(
          {int? id,
          String? lcidString,
          String? languageCode,
          String? $__typename}) =>
      Query$user$user$locale(
          id: id == null ? this.id : id,
          lcidString: lcidString == null ? this.lcidString : lcidString,
          languageCode: languageCode == null ? this.languageCode : languageCode,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$address {
  Query$user$user$address(
      {required this.id,
      required this.address,
      required this.city,
      required this.country,
      required this.postalCode,
      required this.$__typename});

  @override
  factory Query$user$user$address.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$addressFromJson(json);

  final int id;

  final String address;

  final String city;

  final Query$user$user$address$country country;

  final String postalCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$addressToJson(this);
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$city = city;
    final l$country = country;
    final l$postalCode = postalCode;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$address, l$city, l$country, l$postalCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$address) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) return false;
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (l$postalCode != lOther$postalCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$address on Query$user$user$address {
  Query$user$user$address copyWith(
          {int? id,
          String? address,
          String? city,
          Query$user$user$address$country? country,
          String? postalCode,
          String? $__typename}) =>
      Query$user$user$address(
          id: id == null ? this.id : id,
          address: address == null ? this.address : address,
          city: city == null ? this.city : city,
          country: country == null ? this.country : country,
          postalCode: postalCode == null ? this.postalCode : postalCode,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$address$country {
  Query$user$user$address$country(
      {required this.id,
      required this.name,
      required this.alpha2,
      required this.$__typename});

  @override
  factory Query$user$user$address$country.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$address$countryFromJson(json);

  final int id;

  final String name;

  final String alpha2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$user$user$address$countryToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$alpha2 = alpha2;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$alpha2, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$address$country) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$alpha2 = alpha2;
    final lOther$alpha2 = other.alpha2;
    if (l$alpha2 != lOther$alpha2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$address$country
    on Query$user$user$address$country {
  Query$user$user$address$country copyWith(
          {int? id, String? name, String? alpha2, String? $__typename}) =>
      Query$user$user$address$country(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          alpha2: alpha2 == null ? this.alpha2 : alpha2,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$user$user$contact {
  Query$user$user$contact(
      {required this.id,
      required this.email,
      required this.phoneNumber,
      required this.phoneNumber2,
      required this.web,
      required this.$__typename});

  @override
  factory Query$user$user$contact.fromJson(Map<String, dynamic> json) =>
      _$Query$user$user$contactFromJson(json);

  final int id;

  final String email;

  final String phoneNumber;

  final String phoneNumber2;

  final String web;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$user$user$contactToJson(this);
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$phoneNumber = phoneNumber;
    final l$phoneNumber2 = phoneNumber2;
    final l$web = web;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$email, l$phoneNumber, l$phoneNumber2, l$web, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$user$user$contact) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$phoneNumber2 = phoneNumber2;
    final lOther$phoneNumber2 = other.phoneNumber2;
    if (l$phoneNumber2 != lOther$phoneNumber2) return false;
    final l$web = web;
    final lOther$web = other.web;
    if (l$web != lOther$web) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$user$user$contact on Query$user$user$contact {
  Query$user$user$contact copyWith(
          {int? id,
          String? email,
          String? phoneNumber,
          String? phoneNumber2,
          String? web,
          String? $__typename}) =>
      Query$user$user$contact(
          id: id == null ? this.id : id,
          email: email == null ? this.email : email,
          phoneNumber: phoneNumber == null ? this.phoneNumber : phoneNumber,
          phoneNumber2: phoneNumber2 == null ? this.phoneNumber2 : phoneNumber2,
          web: web == null ? this.web : web,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

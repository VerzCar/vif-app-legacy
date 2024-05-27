import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'updateUserProfile.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$updateUserProfile {
  Variables$Mutation$updateUserProfile({required this.userInput});

  @override
  factory Variables$Mutation$updateUserProfile.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$updateUserProfileFromJson(json);

  final Input$UserUpdateInput userInput;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$updateUserProfileToJson(this);
  int get hashCode {
    final l$userInput = userInput;
    return Object.hashAll([l$userInput]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$updateUserProfile) ||
        runtimeType != other.runtimeType) return false;
    final l$userInput = userInput;
    final lOther$userInput = other.userInput;
    if (l$userInput != lOther$userInput) return false;
    return true;
  }

  Variables$Mutation$updateUserProfile copyWith(
          {Input$UserUpdateInput? userInput}) =>
      Variables$Mutation$updateUserProfile(
          userInput: userInput == null ? this.userInput : userInput);
}

@JsonSerializable(explicitToJson: true)
class Mutation$updateUserProfile {
  Mutation$updateUserProfile(
      {required this.updateUser, required this.$__typename});

  @override
  factory Mutation$updateUserProfile.fromJson(Map<String, dynamic> json) =>
      _$Mutation$updateUserProfileFromJson(json);

  final Mutation$updateUserProfile$updateUser updateUser;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$updateUserProfileToJson(this);
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$updateUserProfile) ||
        runtimeType != other.runtimeType) return false;
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$updateUserProfile
    on Mutation$updateUserProfile {
  Mutation$updateUserProfile copyWith(
          {Mutation$updateUserProfile$updateUser? updateUser,
          String? $__typename}) =>
      Mutation$updateUserProfile(
          updateUser: updateUser == null ? this.updateUser : updateUser,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeMutationupdateUserProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateUserProfile'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userInput')),
            type: NamedTypeNode(
                name: NameNode(value: 'UserUpdateInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'user'),
                  value: VariableNode(name: NameNode(value: 'userInput')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'profile'),
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
                        name: NameNode(value: 'bio'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'whyVoteMe'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'imageSrc'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'imagePlaceholderColors'),
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
Mutation$updateUserProfile _parserFn$Mutation$updateUserProfile(
        Map<String, dynamic> data) =>
    Mutation$updateUserProfile.fromJson(data);
typedef OnMutationCompleted$Mutation$updateUserProfile = FutureOr<void>
    Function(dynamic, Mutation$updateUserProfile?);

class Options$Mutation$updateUserProfile
    extends graphql.MutationOptions<Mutation$updateUserProfile> {
  Options$Mutation$updateUserProfile(
      {String? operationName,
      required Variables$Mutation$updateUserProfile variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$updateUserProfile? onCompleted,
      graphql.OnMutationUpdate<Mutation$updateUserProfile>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$updateUserProfile(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationupdateUserProfile,
            parserFn: _parserFn$Mutation$updateUserProfile);

  final OnMutationCompleted$Mutation$updateUserProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$updateUserProfile
    extends graphql.WatchQueryOptions<Mutation$updateUserProfile> {
  WatchOptions$Mutation$updateUserProfile(
      {String? operationName,
      required Variables$Mutation$updateUserProfile variables,
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
            document: documentNodeMutationupdateUserProfile,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$updateUserProfile);
}

extension ClientExtension$Mutation$updateUserProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateUserProfile>>
      mutate$updateUserProfile(
              Options$Mutation$updateUserProfile options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$updateUserProfile>
      watchMutation$updateUserProfile(
              WatchOptions$Mutation$updateUserProfile options) =>
          this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class Mutation$updateUserProfile$updateUser {
  Mutation$updateUserProfile$updateUser(
      {this.profile, required this.$__typename});

  @override
  factory Mutation$updateUserProfile$updateUser.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$updateUserProfile$updateUserFromJson(json);

  final Mutation$updateUserProfile$updateUser$profile? profile;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$updateUserProfile$updateUserToJson(this);
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$profile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$updateUserProfile$updateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$updateUserProfile$updateUser
    on Mutation$updateUserProfile$updateUser {
  Mutation$updateUserProfile$updateUser copyWith(
          {Mutation$updateUserProfile$updateUser$profile? Function()? profile,
          String? $__typename}) =>
      Mutation$updateUserProfile$updateUser(
          profile: profile == null ? this.profile : profile(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Mutation$updateUserProfile$updateUser$profile {
  Mutation$updateUserProfile$updateUser$profile(
      {required this.id,
      required this.bio,
      required this.whyVoteMe,
      required this.imageSrc,
      required this.imagePlaceholderColors,
      required this.$__typename});

  @override
  factory Mutation$updateUserProfile$updateUser$profile.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$updateUserProfile$updateUser$profileFromJson(json);

  final int id;

  final String bio;

  final String whyVoteMe;

  final String imageSrc;

  final String imagePlaceholderColors;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$updateUserProfile$updateUser$profileToJson(this);
  int get hashCode {
    final l$id = id;
    final l$bio = bio;
    final l$whyVoteMe = whyVoteMe;
    final l$imageSrc = imageSrc;
    final l$imagePlaceholderColors = imagePlaceholderColors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$bio,
      l$whyVoteMe,
      l$imageSrc,
      l$imagePlaceholderColors,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$updateUserProfile$updateUser$profile) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) return false;
    final l$whyVoteMe = whyVoteMe;
    final lOther$whyVoteMe = other.whyVoteMe;
    if (l$whyVoteMe != lOther$whyVoteMe) return false;
    final l$imageSrc = imageSrc;
    final lOther$imageSrc = other.imageSrc;
    if (l$imageSrc != lOther$imageSrc) return false;
    final l$imagePlaceholderColors = imagePlaceholderColors;
    final lOther$imagePlaceholderColors = other.imagePlaceholderColors;
    if (l$imagePlaceholderColors != lOther$imagePlaceholderColors) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$updateUserProfile$updateUser$profile
    on Mutation$updateUserProfile$updateUser$profile {
  Mutation$updateUserProfile$updateUser$profile copyWith(
          {int? id,
          String? bio,
          String? whyVoteMe,
          String? imageSrc,
          String? imagePlaceholderColors,
          String? $__typename}) =>
      Mutation$updateUserProfile$updateUser$profile(
          id: id == null ? this.id : id,
          bio: bio == null ? this.bio : bio,
          whyVoteMe: whyVoteMe == null ? this.whyVoteMe : whyVoteMe,
          imageSrc: imageSrc == null ? this.imageSrc : imageSrc,
          imagePlaceholderColors: imagePlaceholderColors == null
              ? this.imagePlaceholderColors
              : imagePlaceholderColors,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

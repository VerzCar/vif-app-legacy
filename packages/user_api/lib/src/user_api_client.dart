import 'package:authentication_repository/authentication_repository.dart';
import 'package:graphql/client.dart';
import 'package:logger/logger.dart';
import 'package:user_api/src/graph/user.graphql.dart';
import 'package:user_api/user_api.dart';

class QueryUserFailure implements Exception {}

class UserApiClient {
  UserApiClient({required authenticationRepository})
      : _authenticationRepository = authenticationRepository;

  final GraphQLCache _cache = GraphQLCache();
  final AuthenticationRepository _authenticationRepository;

  GraphQLClient _client() {
    final _httpLink = HttpLink(
      'http://127.0.0.1:8080/query',
    );

    final _authLink = AuthLink(
      getToken: () async => 'Bearer ${_authenticationRepository.accessToken}',
    );

    Link _link = _authLink.concat(_httpLink);

    return GraphQLClient(
      cache: _cache,
      link: _link,
    );
  }

  Future<MetaUser> metaUserData() async {
    var logger = Logger();

    try {
      final client = _client();
      final result = await client.query$user();

      logger.i(result.exception);

      if (result.hasException) {
        print(result.exception?.linkException);
        print(result.exception?.graphqlErrors.first);
        throw QueryUserFailure();
      }
      logger.i(result.data?.values);
      final graphUser = result.parsedData!.user;
      logger.i(graphUser.id);
      return MetaUser(
        id: graphUser.id,
        username: graphUser.username ?? '',
        firstName: graphUser.firstName ?? '',
        lastName: graphUser.lastName ?? '',
        gender: graphUser.gender.toString(),
        locale: Locale(lcidString: graphUser.locale?.lcidString ?? ''),
        contact: Contact(email: graphUser.contact?.email ?? ''),
      );
    } catch (e) {
      logger.e(e);
      throw QueryUserFailure();
    }
  }
}

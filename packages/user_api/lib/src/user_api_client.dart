import 'package:authentication_repository/authentication_repository.dart';
import 'package:graphql/client.dart';
import 'package:logger/logger.dart';
import 'package:user_api/src/graph/user.graphql.dart';
import 'package:user_api/src/models/address.dart';
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

  Future<User> fetchUser() async {
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

      final graphUser = result.parsedData!.user;

      final Locale? locale = graphUser.locale != null
          ? Locale(
              id: graphUser.locale!.id,
              lcidString: graphUser.locale!.lcidString,
              languageCode: graphUser.locale!.languageCode,
            )
          : null;

      final Bio? bio = graphUser.bio != null
          ? Bio(
              id: graphUser.bio!.id,
              description: graphUser.bio!.description,
            )
          : null;

      final Contact? contact = graphUser.contact != null
          ? Contact(
              id: graphUser.contact!.id,
              phoneNumber: graphUser.contact!.phoneNumber,
              phoneNumber2: graphUser.contact!.phoneNumber2,
              web: graphUser.contact!.web,
              email: graphUser.contact!.email,
            )
          : null;

      final Address? address = graphUser.address != null
          ? Address(
              id: graphUser.address!.id,
              address: graphUser.address!.address,
              city: graphUser.address!.city,
              postalCode: graphUser.address!.postalCode,
              country: Country(
                id: graphUser.address!.country.id,
                name: graphUser.address!.country.name,
                alpha2: graphUser.address!.country.alpha2,
              ),
            )
          : null;

      return User(
        id: graphUser.id,
        username: graphUser.username ?? '',
        firstName: graphUser.firstName ?? '',
        lastName: graphUser.lastName ?? '',
        gender: graphUser.gender.toString(),
        bio: bio,
        locale: locale,
        address: address,
        contact: contact,
      );
    } catch (e) {
      logger.e(e);
      throw QueryUserFailure();
    }
  }
}

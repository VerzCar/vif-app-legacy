import 'package:user_api/user_api.dart' as userApi;
import 'package:user_repository/user_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';

class UserQueryFailure implements Exception {}

class UserRepository {
  UserRepository({
    required AuthenticationRepository authenticationRepository,
    userApi.UserApiClient? userApiClient,
  }) : _userApiClient = userApiClient ??
            userApi.UserApiClient(
                authenticationRepository: authenticationRepository);

  final userApi.UserApiClient _userApiClient;

  Future<User> user() async {
    try {
      final user = await _userApiClient.fetchUser();

      final Locale locale = user.locale != null
          ? Locale(
              id: user.locale!.id,
              lcidString: user.locale!.lcidString,
              languageCode: user.locale!.languageCode,
            )
          : Locale.empty;

      final Bio bio = user.bio != null
          ? Bio(
              id: user.bio!.id,
              description: user.bio!.description,
            )
          : Bio.empty;

      final Contact contact = user.contact != null
          ? Contact(
              id: user.contact!.id,
              phoneNumber: user.contact!.phoneNumber,
              phoneNumber2: user.contact!.phoneNumber2,
              web: user.contact!.web,
              email: user.contact!.email,
            )
          : Contact.empty;

      final Address address = user.address != null
          ? Address(
              id: user.address!.id,
              address: user.address!.address,
              city: user.address!.city,
              postalCode: user.address!.postalCode,
              country: Country(
                id: user.address!.country.id,
                name: user.address!.country.name,
                alpha2: user.address!.country.alpha2,
              ),
            )
          : Address.empty;

      return User(
        id: user.id,
        username: user.username,
        firstName: user.firstName,
        lastName: user.lastName,
        gender: user.gender,
        locale: locale,
        bio: bio,
        address: address,
        contact: contact,
      );
    } catch (e) {
      throw UserQueryFailure();
    }
  }
}

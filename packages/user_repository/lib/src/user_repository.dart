import 'package:user_api/user_api.dart' as userApi;
import 'package:user_repository/user_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';

class MetaUserQueryFailure implements Exception {}

class UserRepository {
  UserRepository({
    required AuthenticationRepository authenticationRepository,
    userApi.UserApiClient? userApiClient,
  }) : _userApiClient = userApiClient ??
            userApi.UserApiClient(
                authenticationRepository: authenticationRepository);

  final userApi.UserApiClient _userApiClient;

  Future<MetaUser> metaUser() async {
    try {
      final metaUser = await _userApiClient.metaUserData();
      return MetaUser(
        id: metaUser.id,
        username: metaUser.username,
        firstName: metaUser.firstName,
        lastName: metaUser.lastName,
        gender: metaUser.gender,
        locale: Locale(lcidString: metaUser.locale.lcidString),
        contact: Contact(email: metaUser.contact.email),
      );
    } catch (e) {
      throw MetaUserQueryFailure();
    }
  }
}

import 'dart:async';
import 'dart:io';
import 'package:uuid/uuid.dart';

import 'package:user_api/user_api.dart' as userApi;
import 'package:user_repository/user_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:dospace/dospace.dart' as dospace;
import 'package:path/path.dart' as p;

class UserQueryFailure implements Exception {}

class UpdateUserProfileFailure implements Exception {}

class UploadProfileImageFailure implements Exception {}

class DoSpace {
  static const String region = "fra1";
  static const String accessKey = "4K4OLVYK76RB4GSVR2Y2";
  static const String secretKey = "xuo+GwKB73wu2pQXjxHt7XXOCtc7m5g+TNPhkOCGzLY";
  static const String bucketName = "user";
  static const String basePath =
      'https://$bucketName.$region.digitaloceanspaces.com';

  // use only the bucket for the spaces functionality
  dospace.Spaces get _spaces {
    return new dospace.Spaces(
      region: region,
      accessKey: accessKey,
      secretKey: secretKey,
    );
  }

  dospace.Bucket get bucket {
    return _spaces.bucket(bucketName);
  }

  Future<void> dispose() => _spaces.close();
}

class UserRepository {
  UserRepository({
    required AuthenticationRepository authenticationRepository,
    userApi.UserApiClient? userApiClient,
  }) : _userApiClient = userApiClient ??
            userApi.UserApiClient(
                authenticationRepository: authenticationRepository) {
    _user = User.empty;
  }

  final userApi.UserApiClient _userApiClient;
  final _userController = StreamController<User>();
  late User _currentUser;
  final DoSpace _doSpace = new DoSpace();

  User get currentUser => _currentUser;

  set currentUser(User user) {
    _currentUser = user;
  }

  /// Stream of [User] which will emit the current [User] state
  Stream<User> get user async* {
    yield* _userController.stream;
  }

  void dispose() => _userController.close();

  Future<User> fetchUser() async {
    try {
      final user = await _userApiClient.fetchUser();

      final Locale locale = user.locale != null
          ? Locale(
              id: user.locale!.id,
              lcidString: user.locale!.lcidString,
              languageCode: user.locale!.languageCode,
            )
          : Locale.empty;

      final Profile profile = user.profile != null
          ? Profile(
              id: user.profile!.id,
              bio: user.profile!.bio,
              whyVoteMe: user.profile!.whyVoteMe,
              imageSrc: user.profile!.imageSrc,
            )
          : Profile.empty;

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

      final entityUser = User(
        id: user.id,
        identityId: user.identityId,
        username: user.username,
        firstName: user.firstName,
        lastName: user.lastName,
        gender: user.gender,
        locale: locale,
        profile: profile,
        address: address,
        contact: contact,
      );

      _user = entityUser;
      return entityUser;
    } catch (e) {
      throw UserQueryFailure();
    }
  }

  Future<Profile> updateUserProfile(ProfileInput profileInput) async {
    try {
      String? imageSrc;
      if (profileInput.imageFilePath != null) {
        final File imageFile = File(profileInput.imageFilePath!);
        imageSrc = await _uploadProfileImage(imageFile, currentUser.identityId);
      }

      final profile = await _userApiClient.updateUserProfile(
        userApi.ProfileInput(
          bio: profileInput.bio,
          whyVoteMe: profileInput.whyVoteMe,
          imageSrc: imageSrc,
        ),
      );

      final entityProfile = Profile(
        id: profile.id,
        bio: profile.bio,
        whyVoteMe: profile.whyVoteMe,
        imageSrc: profile.imageSrc,
      );

      final updatedUser = currentUser.copyWith(profile: entityProfile);
      _user = updatedUser;
      return entityProfile;
    } catch (e) {
      print(e);
      throw UpdateUserProfileFailure();
    }
  }

  Future<String> _uploadProfileImage(File file, String identityId) async {
    try {
      final _extension = p.extension(file.path);
      final _fileName = 'IMG_${Uuid().v4()}$_extension';
      final _contentType = 'image/' + _extension.substring(1);
      final destPath = 'profile/img';
      final _imageKey = '$identityId/$destPath/$_fileName';

      await _doSpace.bucket.uploadFile(
        _imageKey,
        file,
        _contentType,
        dospace.Permissions.public,
      );

      await _doSpace.dispose();

      return '${DoSpace.basePath}/$_imageKey';
    } catch (e) {
      throw UploadProfileImageFailure();
    }
  }

  set _user(User user) {
    currentUser = user;
    _userController.add(user);
  }
}

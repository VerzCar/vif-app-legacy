import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:meta/meta.dart';

/// {@template sign_up_with_email_and_password_failure}
/// Thrown if during the sign up process if a failure occurs.
/// {@endtemplate}
class SignUpWithEmailAndPasswordFailure implements Exception {
  /// {@macro sign_up_with_email_and_password_failure}
  const SignUpWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  factory SignUpWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
          'Please enter a stronger password.',
        );
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template log_in_with_email_and_password_failure}
/// Thrown during the login process if a failure occurs.
/// {@endtemplate}
class LogInWithEmailAndPasswordFailure implements Exception {
  /// {@macro log_in_with_email_and_password_failure}
  const LogInWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  factory LogInWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LogInWithEmailAndPasswordFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const LogInWithEmailAndPasswordFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LogInWithEmailAndPasswordFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LogInWithEmailAndPasswordFailure(
          'Incorrect password, please try again.',
        );
      default:
        return const LogInWithEmailAndPasswordFailure();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template log_in_with_google_failure}
/// Thrown during the sign in with google process if a failure occurs.
/// {@endtemplate}
class LogInWithGoogleFailure implements Exception {
  /// {@macro log_in_with_google_failure}
  const LogInWithGoogleFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  factory LogInWithGoogleFailure.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const LogInWithGoogleFailure(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return const LogInWithGoogleFailure(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return const LogInWithGoogleFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return const LogInWithGoogleFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LogInWithGoogleFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LogInWithGoogleFailure(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return const LogInWithGoogleFailure(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return const LogInWithGoogleFailure(
          'The credential verification ID received is invalid.',
        );
      default:
        return const LogInWithGoogleFailure();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template verification_failure}
/// Thrown during the verification with cognito process failure occurs.
/// {@endtemplate}
class VerificationFailure implements Exception {
  /// {@macro verification_failure}
  const VerificationFailure([
    this.message = 'Verification exception occurred.',
  ]);

  /// The associated error message.
  final String message;
}

/// Thrown during the logout process if a failure occurs.
class LogOutFailure implements Exception {}

/// Thrown during the get current user process if a failure occurs.
class CurrentUserFailure implements Exception {}

enum AuthFlowStatus { login, signUp, verification, session }

/// AuthState represents the current authentication state
class AuthState {
  final AuthFlowStatus authFlowStatus;

  AuthState({required this.authFlowStatus});
}

/// {@template authentication_repository}
/// Repository which manages user authentication.
/// {@endtemplate}
class AuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository();

  final _authStateController = StreamController<AuthState>();
  late AuthCredentials _credentials;

  /// Whether or not the current environment is web
  /// Should only be overriden for testing purposes. Otherwise,
  /// defaults to [kIsWeb]
  @visibleForTesting
  bool isWeb = kIsWeb;

  /// Stream of [AuthState] which will emit the current [AuthFlowStatus] when
  /// the authentication state changes.
  Stream<AuthState> get status async* {
    await _checkAuthStatus();
    yield* _authStateController.stream;
  }

  void triggerSignUp() {
    final state = AuthState(authFlowStatus: AuthFlowStatus.signUp);
    _authStateController.add(state);
  }

  void triggerLogin() {
    final state = AuthState(authFlowStatus: AuthFlowStatus.login);
    _authStateController.add(state);
  }

  /// Creates a new user with the provided [credentials].
  ///
  /// Throws a [SignUpWithEmailAndPasswordFailure] if an exception occurs.
  Future<void> signUpWithCredentials(SignUpCredentials credentials) async {
    try {
      final userAttributes = {
        CognitoUserAttributeKey.email: credentials.email,
      };

      final result = await Amplify.Auth.signUp(
          username: credentials.username,
          password: credentials.password,
          options: CognitoSignUpOptions(userAttributes: userAttributes));

      if (result.isSignUpComplete) {
        final loginCredentials = LoginCredentials(
          username: credentials.username,
          password: credentials.password,
        );
        await loginWithCredentials(loginCredentials);
      } else {
        _credentials = credentials;

        final state = AuthState(authFlowStatus: AuthFlowStatus.verification);
        _authStateController.add(state);
      }
    } on AuthException catch (authExe) {
      print('Failed to sign up - ${authExe.message}');
      throw SignUpWithEmailAndPasswordFailure.fromCode(authExe.message);
    } catch (err) {
      print('Failed to sign up - ${err}');
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  /// Signs in with the provided [credentials].
  ///
  /// Throws a [AuthCredentials] if an exception occurs.
  Future<void> loginWithCredentials(AuthCredentials credentials) async {
    try {
      final result = await Amplify.Auth.signIn(
        username: credentials.username,
        password: credentials.password,
      );

      if (result.isSignedIn) {
        final state = AuthState(authFlowStatus: AuthFlowStatus.session);
        _authStateController.add(state);
      } else {
        print('User could not be signed in - ${result.toString()}');
        throw const LogInWithEmailAndPasswordFailure();
      }
    } on AuthException catch (authExe) {
      print('Could not login - ${authExe.message}');
      throw LogInWithEmailAndPasswordFailure.fromCode(authExe.message);
    }
  }

  /// Verifies the sign up code.
  ///
  /// Throws a [VerificationFailure] if an exception occurs.
  Future<void> verifyCode(String verificationCode) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: _credentials.username,
        confirmationCode: verificationCode,
      );

      if (result.isSignUpComplete) {
        final loginCredentials = LoginCredentials(
          username: _credentials.username,
          password: _credentials.password,
        );
        await loginWithCredentials(loginCredentials);
      } else {
        // Follow more steps
        print('Failed to verify - ${result.nextStep.signUpStep}');
        throw const VerificationFailure();
      }
    } on AuthException catch (authExe) {
      print('Could not verify code - ${authExe.message}');
      throw const VerificationFailure();
    } catch (_) {
      throw const VerificationFailure();
    }
  }

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream.
  ///
  /// Throws a [LogOutFailure] if an exception occurs.
  Future<void> logOut() async {
    try {
      await Amplify.Auth.signOut();
      triggerLogin();
    } on AuthException catch (authExe) {
      print('Could not logout - ${authExe.message}');
      throw LogOutFailure();
    } catch (_) {
      throw LogOutFailure();
    }
  }

  Future<User> user() async {
    try {
      final authUser = await Amplify.Auth.getCurrentUser();
      final user = User(
        id: authUser.userId,
      );
      return user;
    } catch (_) {
      throw CurrentUserFailure();
    }
  }

  void dispose() => _authStateController.close();

  Future<void> _checkAuthStatus() async {
    try {
      final result = await Amplify.Auth.fetchAuthSession();

      if (result.isSignedIn) {
        final state = AuthState(authFlowStatus: AuthFlowStatus.session);
        _authStateController.add(state);
        return;
      }
    } catch (_) {
      print('Check auth state failure');
    }
    final state = AuthState(authFlowStatus: AuthFlowStatus.login);
    _authStateController.add(state);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/json_parser.dart';
import 'package:mobile/src/core/api/json_parsers/reponse_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/ui/views/reset_password_screen.dart';

abstract class AuthProvider {
  static final authProvider = Provider<Auth>((ref) => Auth());
}

abstract class UserDetailProvider {
  static final userDetailProvider = Provider<User>(
    (ref) {
      final authProvider = ref.read(AuthProvider.authProvider);
      final user = authProvider.userDetails;
      return user;
    },
  );
}

class Auth implements AuthRepository {
  User _user = User();

  User get userDetails => _user;

  /// Log the user
  @override
  Future<void> login(User user) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/login',
        data: user.toJson(),
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Get the link to reset password
  /// This link should return the user to app into the
  /// [ResetPasswordScreen] in case the user has the app
  /// otherwise into the store
  @override
  Future<void> forgotPassword(String email) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/forgot-password',
        data: {
          'email': email,
        },
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Verify passcode send to the user by email
  @override
  Future<void> verifyPasscode(
    String email,
    String password,
    String passCode,
    String agent,
  ) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/verify-passcode',
        data: {
          'email': email,
          'password': password,
          'passcode': passCode,
          'agent': agent
        },
      ).executePost<User>(UserParser());

      _user = response;

      SharedPrefService().saveString('sessionId', response.session);
    } catch (e) {
      throw e;
    }
  }

  /// Logout user
  @override
  Future<void> logout() async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/logout',
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Reset password
  @override
  Future<void> resetPassword(
    String email,
    String password,
    String agent,
    String nonce,
  ) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/reset-password/$nonce',
        data: {
          'password': password,
          'agent': agent,
          'email': email,
          'nonce': nonce,
        },
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Get Auth JWT Token
  @override
  Future<void> getAuthToken(
      String sessionId, String agent, String nonce) async {
    sessionId = await SharedPrefService().getString('sessionId') ?? '';

    try {
      final response = await RequestREST(
        endpoint: '/auth/session/$nonce',
        data: {
          'session': sessionId,
          'agent': agent,
        },
      ).executePost<LoginResponse>(LoginResponseParser());

      print('Session: ' + sessionId);
      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }
}

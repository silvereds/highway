import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/json_parser.dart';
import 'package:mobile/src/core/api/json_parsers/reponse_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';

abstract class AuthProvider {
  static final authProvider = Provider<Auth>((ref) => Auth());
}

abstract class UserDetailProvider {
  static final userDetailProvider = Provider<User>(
    (ref) {
      final authProvider = ref.read(AuthProvider.authProvider);
      final user = authProvider.user;
      return user;
    },
  );
}

class Auth implements AuthRepository {
  User user = User();

  User get userDetails => user;

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

      user = response;
    } catch (e) {
      throw e;
    }

    return user;
  }

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
}

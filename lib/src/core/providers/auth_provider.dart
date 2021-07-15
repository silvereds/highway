import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/api/api_exceptions.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/reponse_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';

abstract class AuthProvider {
  static final authProvider = Provider<Auth>((ref) => Auth());
}

class Auth implements AuthRepository {
  @override
  Future<void> login(User user) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/login',
        data: user.toJson(),
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } on DioError catch (dioError) {
      throw ApiException.fromDioError(dioError);
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
    } on DioError catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  @override
  Future<void> verifyPasscode(
      String email, String password, String passCode, String agent) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/verify-passcode',
        data: {
          'email': email,
          'password': password,
          'passcode': passCode,
          'agent': agent
        },
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } on DioError catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  @override
  Future<void> logout() async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/logout',
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } on DioError catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  @override
  Future<void> resetPassword(String password, String confirmPassword) async {
    try {
      final response =
          await RequestREST(endpoint: '/auth/reset-password', data: {
        'password': password,
        'confirmPassword': confirmPassword,
      }).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } on DioError catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }
}

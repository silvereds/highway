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
  Future<void> login(String email, String password) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      ).executePost<LoginResponse>(LoginResponseParser());

      print(response.toJson());
    } on DioError catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  @override
  Future<void> resetPassword(String email) {}
}

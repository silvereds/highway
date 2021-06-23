import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/entities.dart';
import 'package:mobile/src/core/network/api_service.dart';
import 'package:mobile/src/core/network/exception.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';

abstract class AuthProvider {
  static final authProvider = Provider<Auth>((ref) => Auth());
}

class Auth implements AuthRepository {
  @override
  Future<User> login(User user) async {
    final client = ApiService(dio.Dio());
    try {
      final userLog = await client.loginUser(user);
      print(userLog.email);
      return userLog;
    } on DioError catch (dioError) {
      throw CustomException.fromDioError(dioError);
    }
  }

  @override
  Future<void> resetPassword(String email) {}
}

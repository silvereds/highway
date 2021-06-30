import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/entities.dart';
import 'package:mobile/src/core/network/api_service.dart';
import 'package:mobile/src/core/network/model_response.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';

abstract class AuthProvider {
  static final authProvider = Provider<Auth>((ref) => Auth());
}

class Auth implements AuthRepository {
  @override
  Future<User> login(User user) async {
    try {
      final client = ApiService.create();

      final response = await client.loginUser(user);
    } catch (e) {}
  }

  @override
  Future<void> resetPassword(String email) {}
}

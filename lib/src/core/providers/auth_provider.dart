import 'package:flutter/foundation.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';

class AuthProvider extends AuthRepository with ChangeNotifier {
  @override
  Future<void> login(String userNameOrPhoneNumber, String password) {}

  @override
  Future<void> resetPassword(String email) {}
}

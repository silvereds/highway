import 'package:mobile/src/core/entities/entities.dart';

abstract class AuthRepository {
  Future<User> login(User user);

  Future<void> resetPassword(String email);
}

import 'package:mobile/src/core/entities/all.dart';

abstract class AuthRepository {
  Future<void> login(User user);

  Future<void> verifyPasscode(
      String email, String password, String passCode, String agent);

  Future<void> forgotPassword(String email);

  Future<void> resetPassword(
    String email,
    String password,
    String passCode,
  );

  Future<void> logout();

  Future<void> getAuthToken();

  Future<Organisation> getUserOrganisation();
}

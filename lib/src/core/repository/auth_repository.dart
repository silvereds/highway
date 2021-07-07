abstract class AuthRepository {
  Future<void> login(String email, String password, String agent,
      {String passcode});

  Future<void> verifyPasscode(
      String email, String password, String passCode, String agent);

  Future<void> forgotPassword(String email);

  Future<void> resetPassword(String password, String confirmPassword);

  Future<void> logout();
}

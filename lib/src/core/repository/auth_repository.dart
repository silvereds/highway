abstract class AuthRepository {
  Future<void> login(String userNameOrPhoneNumber, String password);

  Future<void> resetPassword(String email);
}

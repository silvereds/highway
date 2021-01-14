import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';

class RegisterController {
  AuthService _authService;

  RegisterController() {
    this._authService = AuthService();
  }

  Future<String> firstTimeLogin(AuthCredentials authCredentials) async {
    if (isValidEmail(authCredentials.email) ||
        isValidPhoneNumber(authCredentials.phoneNumber)) {
      return await _authService.firstTimeLogin(authCredentials);
    } else {
      return "Invalid Email Or Phone Number";
    }
  }

  bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool isValidPhoneNumber(String phoneNumber) {
    return phoneNumber.length == 14;
  }
}

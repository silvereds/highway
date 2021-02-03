import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';

class RegisterController {
  AuthService _authService;

  RegisterController() {
    this._authService = AuthService();
  }

  Future<String> firstTimeLogin(
      AuthCredentials authCredentials, String authType) async {
  
    if (authType == "email") {

      if (isValidEmail(authCredentials.email)) {
        return await _authService.firstTimeLogin(authCredentials);
      } else {
        return "Invalid Email";
      }
      
    } else if (authType == 'phoneNumber') {
      if (isValidPhoneNumber(authCredentials.phoneNumber)) {
        return await _authService.firstTimeLogin(authCredentials);
      } else {
        return "Invalid Phone Number";
      }
    } else {
      return "Something went wrong";
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

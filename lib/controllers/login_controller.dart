import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';


class LoginController{
  AuthService _authService;

  LoginController() {
    this._authService = AuthService();
}

 // checks if email exist in system and return true or false
Future<String> loginRequest(AuthCredentials authCredentials) async {
    if (isValidEmail(authCredentials.email) ||
        isValidPhoneNumber(authCredentials.phoneNumber)) {
      return await _authService.firstTimeLogin(authCredentials);
    } else {
      return "Invalid Email Or Phone Number";
    }
  }
   bool isValidEmail(String email) {
    return true;
  }


  
  bool isValidPhoneNumber(String phoneNumber) {
    return true;
  }

}
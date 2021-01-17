import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';


class LoginController{
  AuthService _authService;

  LoginController() {
    this._authService = AuthService();
}


Future<bool> loginRequest(
      AuthCredentials authCredentials, String authType) async {
    authCredentials.agent = "mobile";
    if (authType == "email") {

      if (isValidEmail(authCredentials.email)) {
        return await _authService.loginRequest(authCredentials);
      } else {
        return false;
      }
      
    } else if (authType == 'phoneNumber') {
      if (isValidPhoneNumber(authCredentials.phoneNumber)) {
        return await _authService.loginRequest(authCredentials);
      } else {
        return false;
      }
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

 // checks if email exist in system and return true or false
// Future<String> loginRequest(AuthCredentials authCredentials) async {
//     if (isValidEmail(authCredentials.email) ||
//         isValidPhoneNumber(authCredentials.phoneNumber)) {
//       return await _authService.firstTimeLogin(authCredentials);
//     } else {
//       return "Invalid Email Or Phone Number";
//     }
//   }
//    bool isValidEmail(String email) {
//     return true;
//   }


  
//   bool isValidPhoneNumber(String phoneNumber) {
//     return true;
//   }

}
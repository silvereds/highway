import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';


class LoginController{
  AuthService _authService;

  LoginController() {
    this._authService = AuthService();
}

 // checks if email exist in system and return true or false
Future<String> loginRequest(AuthCredentials authCredentials, String authType) async {
       authCredentials.agent = "mobile";
      
  }
      
     
  }


 

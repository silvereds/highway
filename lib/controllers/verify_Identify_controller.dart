
import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';


class VerifyShortcode{
   AuthService _authService; 

  VerifyShortcode(){
      this._authService = AuthService();
  }

  Future<bool> verifyPasscode(AuthCredentials authCredentials) async {
    if (isvalidPassCode(authCredentials.passcode)){
      return true;
    } else {
      return false;
    }
  }
  




  isvalidPassCode(String passcode){
    return passcode; 

  }

}
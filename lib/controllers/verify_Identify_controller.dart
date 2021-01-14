
import 'package:mobile/entities/auth-credentials.dart';
import 'package:mobile/services/auth_service.dart';


class VerifyIdentiity{
  AuthService _authService; 

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
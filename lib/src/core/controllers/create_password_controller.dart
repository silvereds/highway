import 'package:mobile/src/core/entities/auth-credentials.dart';
import 'package:mobile/src/core/services/auth_service.dart';

class CreatePasswordController {
  AuthService _authService;

  CreatePasswordController() {
    this._authService = AuthService();
  }

  Future<bool> newPassword(AuthCredentials authCredentials) async {
    if (isValidPassword(authCredentials.email)) {
      return await _authService.newPassword(authCredentials);
    } else {
      return false;
    }
  }

  bool isValidPassword(String password) {
    return RegExp(
            r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$") // Minimum eight characters, at least one letter and one number:

        .hasMatch(password);
  }
}

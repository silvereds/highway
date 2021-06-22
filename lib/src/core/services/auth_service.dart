import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/src/core/entities/entities.dart';

class AuthService {
  final String endpoint = "https://dev-admin.highweh.com/auth";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  AuthService();

  Future<String> firstTimeLogin(AuthCredentials authCredentials) async {
    String url = endpoint + "/first-time";
    final http.Response response = await http.post(url,
        headers: headers, body: jsonEncode(authCredentials.toJson()));

    if (response.statusCode == 200) {
      return "success";
    } else {
      return "failure";
    }
  }

  Future<bool> loginRequest(AuthCredentials authCredentials) async {
    String url = endpoint + "/login-request";
    final http.Response response =
        await http.post(url, headers: headers, body: authCredentials.toJson());

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  logout() {}

  Future<bool> forgotPasswordRequest(AuthCredentials authCredentials) async {
    String url = endpoint + "/forgot-password";
    final http.Response response =
        await http.post(url, headers: headers, body: authCredentials.toJson());

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> newPassword(AuthCredentials authCredentials) async {
    String url = endpoint + "/new-password";
    final http.Response response =
        await http.post(url, headers: headers, body: authCredentials.toJson());

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<User> verifyPasscode(AuthCredentials authCredentials) async {
    String url = endpoint + "/verify-password";
    final http.Response response =
        await http.post(url, headers: headers, body: authCredentials.toJson());

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}

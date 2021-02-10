import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/entities/user.dart';

class UserService {
  final String endpoint = "https://dev-admin.highweh.com/users";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  UserService();

  Future<bool> getUsers(User user) async {
    final http.Response response =
        await http.get("https://dev-admin.highweh.com/users");

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('failed to load user');
    }
  }

  Future<String> createUser(User user) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: user.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }

  Future<String> updateUser(User user) async {
    String url = endpoint + "/userId";
    final http.Response response =
        await http.post(url, headers: headers, body: user.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }

  Future<bool> retrieveUser(User user) async {
    String url = endpoint + "/userId";
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }

  }

  Future <String> archieveUser(User user) async { 

    String url = endpoint + "/userId"; 
    final http.Response response = await http.delete(url); 
    if(response.statusCode == 200){
      return "Success"; 

    } else {
      return 'falure';
    }

  }

}

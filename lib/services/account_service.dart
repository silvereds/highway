import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/entities/account.dart';

class AccountService {
  final String endpoint = "https://dev-admin.highweh.com/accounts";
  Map<String, String> headers = <String, String>{
    'content-Type': 'application/json; charset=UTF-8',
  };

  AccountService();

  Future<Account> createAccount(Account account) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: account.toJson());

    if (response.statusCode == 201) {
      return Account.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load account');
    }
  }

  Future<bool> retrieveAccounts(Account account) async {
    final http.Response response = await http.get(endpoint);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('failed to load accounts');
    }
  }

  Future<String> updateAccount(Account account) async {
    String url = endpoint + "/accountId";
    final http.Response response =
        await http.post(url, headers: headers, body: account.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }

  Future<bool> retrieveUser(Account account) async {
    String url = endpoint + "/accountId";
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('failed to load user');
    }
  }

  Future<String> archieveUser(Account account) async {
    String url = endpoint + "/accountId";
    final http.Response response = await http.delete(url);
    if (response.statusCode == 200) {
      return "Success";
    } else {
      return 'falure';
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/entities/transaction.dart';


class RechargeService{
   final String endpoint = "https://dev-admin.highweh.com/transactions";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

      Future<Transaction> rechargeRequest(Transaction transaction) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: transaction.toJson());

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Recharge account');
    }
  }

}

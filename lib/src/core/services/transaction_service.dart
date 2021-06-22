import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/src/core/entities/entities.dart';

class TransactionService {
  final String endpoint = "https://dev-admin.highweh.com/transactions";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  TransactionService();

  Future<Transaction> openTransaction(Transaction transaction) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: transaction.toJson());

    if (response.statusCode == 201) {
      return Transaction.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to open transaction');
    }
  }

  Future<Transaction> retrieveTransactions(Transaction transaction) async {
    final http.Response response =
        await http.get("https://dev-admin.highweh.com/transactions");

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load transactions');
    }
  }

  Future<String> updateTransaction(Transaction transaction) async {
    String url = endpoint + "/transactionId";
    final http.Response response =
        await http.put(url, headers: headers, body: transaction.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }

  Future<Transaction> retrieveTransaction(Transaction transaction) async {
    String url = endpoint + "/transactionId";
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load transaction');
    }
  }

  Future<String> archieveUser(Transaction transaction) async {
    String url = endpoint + "/transactionId";
    final http.Response response = await http.delete(url);
    if (response.statusCode == 200) {
      return "Success";
    } else {
      return 'failed';
    }
  }
}

import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/transactions/transactions_list_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/transactions_repository.dart';

class TransactionNotifier implements TransactionsRepository {
  @override
  Future<List<Transaction>> getAllTransactions() async {
    try {
      final response = await RequestREST(
        endpoint: '/transactions',
      ).executeGet<List<Transaction>>(TransactionListParser());

      print('Charges: ' + response.first.deviceFrom);
      return response;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Transaction> getTransaction() {}
  @override
  Future<void> deleteTransaction(String transactionUuid) {}
}

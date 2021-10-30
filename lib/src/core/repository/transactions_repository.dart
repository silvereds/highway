import 'package:mobile/src/core/entities/all.dart';

abstract class TransactionsRepository {
  Future<List<Transaction>> getAllTransactions();
  Future<Transaction> getTransaction();
  Future<void> deleteTransaction(String transactionUuid);
}

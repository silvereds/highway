import 'package:mobile/src/core/entities/all.dart';

import '../json_parser.dart';

class TransactionListParser extends JsonParser<List<Transaction>>
    with ListDecoder<List<Transaction>> {
  const TransactionListParser();

  @override
  Future<List<Transaction>> parseFromJson(String json) async {
    return decodeJsonList(json)
        .map((value) => Transaction.fromJson(value as Map<String, dynamic>))
        .toList();
  }
}

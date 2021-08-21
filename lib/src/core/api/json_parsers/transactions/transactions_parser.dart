import 'package:mobile/src/core/entities/all.dart';

import '../json_parser.dart';

class TransactionParser extends JsonParser<Transaction>
    with ObjectDecoder<Transaction> {
  const TransactionParser();

  @override
  Future<Transaction> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return Transaction.fromJson(decoded);
  }
}

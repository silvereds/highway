import 'package:http/http.dart' as http;
import 'package:mobile/src/core/entities/transaction.dart';

class BillService {
  final String endpoint = "https://dev-admin.highweh.com/bills";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  BillService();

  Future<String> sendBill(Transaction transaction) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: transaction.toJson());

    if (response.statusCode == 202) {
      return 'success';
    } else {
      throw Exception('Failed to Create Bill');
    }
  }
}

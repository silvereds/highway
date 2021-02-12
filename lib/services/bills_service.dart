import 'dart:convert';

import 'package:http/http.dart' as http;

class BillService {

  final String endpoint = "https://dev-admin.highweh.com/bills";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };


  BillService(); 



}

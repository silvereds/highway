import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/entities/notification.dart';


class PeerToPeerService{

   final String endpoint = "https://dev-admin.highweh.com/p2p";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  PeerToPeerService();

     Future<Notification> makeRequest(Notification notification) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: notification.toJson());

    if (response.statusCode == 200) {
      return Notification.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to open p2p');
    }
  }
}



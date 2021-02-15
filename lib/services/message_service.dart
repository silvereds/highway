import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/entities/message.dart';


class MessageService {

  final String endpoint = "https://dev-admin.highweh.com/messages";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  MessageService();


  
    Future<Message> retrieveMessages(Message message) async {
    final http.Response response =
        await http.get("https://dev-admin.highweh.com/messages");

    if (response.statusCode == 200) {
     return Message.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load Messages');
    }
  }


    Future<Message> createMessage(Message message) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: message.toJson());

    if (response.statusCode == 200) {
      return Message.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create message');
    }
  }

  
  Future<Message> retrieveMessage(Message user) async {
    String url = endpoint + "/messageId";
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return Message.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load Message');
    }

  }


  Future<String> updateMessage(Message message) async {
    String url = endpoint + "/messageId";
    final http.Response response =
        await http.put(url, headers: headers, body: message.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }


   Future <String> archieveUser(Message message) async { 

    String url = endpoint + "/messageId"; 
    final http.Response response = await http.delete(url); 
    if(response.statusCode == 200){
      return "Success"; 

    } else {
      return 'falure';
    }

  }

}
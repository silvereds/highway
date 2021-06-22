import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/src/core/entities/entities.dart';

class TicketService {
  final String endpoint = "https://dev-admin.highweh.com/ticket";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  TicketService();

  Future<Ticket> sendTicket(Ticket ticket) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: ticket.toJson());

    if (response.statusCode == 201) {
      return Ticket.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to send ticket');
    }
  }

  Future<Ticket> retrieveTickets(Ticket ticket) async {
    final http.Response response =
        await http.get("https://dev-admin.highweh.com/ticket");

    if (response.statusCode == 200) {
      return Ticket.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load ticket');
    }
  }

  Future<String> updateTicket(Ticket ticket) async {
    String url = endpoint + "/ticketId";
    final http.Response response =
        await http.put(url, headers: headers, body: ticket.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }

  Future<Ticket> retriveTicket(Ticket ticket) async {
    String url = endpoint + "/ticketId";
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return Ticket.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load ticket');
    }
  }

  Future<String> archieveUser(Ticket ticket) async {
    String url = endpoint + "/ticketId";
    final http.Response response = await http.delete(url);
    if (response.statusCode == 200) {
      return "Success";
    } else {
      return 'failed';
    }
  }
}

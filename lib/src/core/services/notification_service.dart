import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/src/core/entities/notification.dart';

class NotificationService {
  final endPoint = "https://dev-admin.highweh.com/notifications";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  NotificationService();

  Future<Notification> createNotification(Notification notification) async {
    String url = endPoint;
    final http.Response response = await http.post(url,
        headers: headers, body: jsonEncode(notification.toJson()));

    if (response.statusCode == 201) {
      return Notification.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("failed to create notification");
    }
  }

  Future<Notification> retrieveNotifications(Notification notification) async {
    String url = endPoint;
    final http.Response response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      return Notification.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("failed to retrive notifications");
    }
  }

  Future<String> updateNotification(Notification notification) async {
    String url = endPoint + "/notificationId";
    final http.Response response =
        await http.put(url, headers: headers, body: notification.toJson());
    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "Failed";
    }
  }

  Future<Notification> retrieveNotification(Notification notification) async {
    String url = endPoint + "/notificationId";
    final http.Response response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      return Notification.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("failed to retrive notification");
    }
  }

  Future<String> archiveNotification(Notification notification) async {
    String url = endPoint + "/notificationId";
    final http.Response response = await http.delete(url, headers: headers);

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "False";
    }
  }
}

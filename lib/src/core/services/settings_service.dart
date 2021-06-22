import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/src/core/entities/entities.dart';

class SettingService {
  final String endpoint = "https://dev-admin.highweh.com/settings";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<Setting> createSetting(Setting setting) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: setting.toJson());

    if (response.statusCode == 201) {
      return Setting.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create setting');
    }
  }

  Future<Setting> retrieveSettings(Setting setting) async {
    final http.Response response =
        await http.get("https://dev-admin.highweh.com/settings");

    if (response.statusCode == 200) {
      return Setting.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load settings');
    }
  }

  Future<String> updateTicket(Setting setting) async {
    String url = endpoint + "/settingId";
    final http.Response response =
        await http.put(url, headers: headers, body: setting.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "Failed";
    }
  }

  Future<Setting> retriveSetting(Setting setting) async {
    String url = endpoint + "/settingId";
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return Setting.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load setting');
    }
  }

  Future<String> archieveUser(Setting setting) async {
    String url = endpoint + "/settingId";
    final http.Response response = await http.delete(url);
    if (response.statusCode == 200) {
      return "Success";
    } else {
      return 'failed';
    }
  }
}

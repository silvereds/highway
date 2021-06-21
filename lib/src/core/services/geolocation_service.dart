import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/entities/geolocation.dart';

class GeolocationService {
  final String endpoint = "https://dev-admin.highweh.com/geolocations";
  Map<String, String> headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  GeolocationService();

  Future<Geolocation> retrieveLocations(Geolocation geolocation) async {
    final http.Response response = await http.get(endpoint);

    if (response.statusCode == 200) {
      return Geolocation.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load Locations');
    }
  }

  Future<Geolocation> saveLocation(Geolocation geolocation) async {
    String url = endpoint;
    final http.Response response =
        await http.post(url, headers: headers, body: geolocation.toJson());

    if (response.statusCode == 202) {
      return Geolocation.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to open transaction');
    }
  }

  Future<String> updateGeolocation(Geolocation geolocation) async {
    String url = endpoint + "/geolocationId";
    final http.Response response =
        await http.put(url, headers: headers, body: geolocation.toJson());

    if (response.statusCode == 200) {
      return "Success";
    } else {
      return "failure";
    }
  }

  Future<Geolocation> retrieveGeolocation(Geolocation geolocation) async {
    String url = endpoint + "/geolocationId";
    final http.Response response = await http.get(url);
    print(response);
    if (response.statusCode == 200) {
      return Geolocation.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load transaction');
    }
  }
}

import 'dart:convert';

Session sessionFromJsonString(String str) {
  final jsonData = json.decode(str);
  return Session.fromJson(jsonData);
}

String sessionToJsonString(Session data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Session {
  int id;
  String userId;
  String accessToken;
  String role;

  Session({this.id, this.userId, this.accessToken, this.role});

  factory Session.fromJson(Map<String, dynamic> json) => Session(
      id: json["id"],
      userId: json["user_id"],
      accessToken: json["access_token"],
      role: json["role"]);

  Map<String, dynamic> toJson() =>
      {"id": id, "user_id": userId, "access_token": accessToken, "role": role};
}

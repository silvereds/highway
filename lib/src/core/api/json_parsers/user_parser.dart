import 'package:mobile/src/core/entities/all.dart';

import 'json_parser.dart';

class UserParser extends JsonParser<User> with ObjectDecoder<User> {
  const UserParser();

  @override
  Future<User> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return User.fromJson(decoded);
  }
}

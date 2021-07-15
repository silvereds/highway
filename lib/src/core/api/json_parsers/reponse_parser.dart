import 'package:mobile/src/core/entities/all.dart';

import 'json_parser.dart';

class LoginResponseParser extends JsonParser<LoginResponse>
    with ObjectDecoder<LoginResponse> {
  const LoginResponseParser();

  @override
  Future<LoginResponse> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return LoginResponse.fromJson(decoded);
  }
}

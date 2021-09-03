import 'package:mobile/src/core/entities/all.dart';

import 'json_parser.dart';

class LoginResponseParser extends JsonParser<SimpleMessageResponse>
    with ObjectDecoder<SimpleMessageResponse> {
  const LoginResponseParser();

  @override
  Future<SimpleMessageResponse> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return SimpleMessageResponse.fromJson(decoded);
  }
}

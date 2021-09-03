import 'package:mobile/src/core/entities/all.dart';

import 'json_parser.dart';

class UserInfoApiParser extends JsonParser<UserInfoApi>
    with ObjectDecoder<UserInfoApi> {
  const UserInfoApiParser();

  @override
  Future<UserInfoApi> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return UserInfoApi.fromJson(decoded);
  }
}

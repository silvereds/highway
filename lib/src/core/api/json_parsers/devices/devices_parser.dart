import 'package:mobile/src/core/entities/all.dart';

import '../json_parser.dart';

class DevicesParser extends JsonParser<Devices> with ObjectDecoder<Devices> {
  const DevicesParser();

  @override
  Future<Devices> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return Devices.fromJson(decoded);
  }
}

import 'package:mobile/src/core/entities/all.dart';

import '../json_parser.dart';

class DevicesListParser extends JsonParser<List<Devices>>
    with ListDecoder<List<Devices>> {
  const DevicesListParser();

  @override
  Future<List<Devices>> parseFromJson(String json) async {
    return decodeJsonList(json)
        .map((value) => Devices.fromJson(value as Map<String, dynamic>))
        .toList();
  }
}

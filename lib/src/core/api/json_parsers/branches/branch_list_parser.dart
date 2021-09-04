import 'package:mobile/src/core/entities/all.dart';

import '../json_parser.dart';

class BranchesListParser extends JsonParser<List<Branche>>
    with ListDecoder<List<Branche>> {
  const BranchesListParser();

  @override
  Future<List<Branche>> parseFromJson(String json) async {
    return decodeJsonList(json)
        .map((value) => Branche.fromJson(value as Map<String, dynamic>))
        .toList();
  }
}

import 'package:mobile/src/core/entities/all.dart';

import '../json_parser.dart';

class OrganisationParser extends JsonParser<Organisation>
    with ObjectDecoder<Organisation> {
  const OrganisationParser();

  @override
  Future<Organisation> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return Organisation.fromJson(decoded);
  }
}

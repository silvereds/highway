import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/branches/branch_list_parser.dart';
import 'package:mobile/src/core/entities/all.dart';

abstract class BranchesFacade {
  Future<List<Branche>> getAllBranch();
}

class BranchesRepository implements BranchesFacade {
  @override
  Future<List<Branche>> getAllBranch() async {
    final response = await RequestREST(
      endpoint: '/branches',
    ).executeGet<List<Branche>>(BranchesListParser());
    return response;
  }
}

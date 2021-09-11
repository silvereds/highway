import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/branches/branch_list_parser.dart';
import 'package:mobile/src/core/entities/all.dart';

abstract class BrancheFacade {
  Future<List<Branche>> getAllBranch();
}

class BrancheRepository implements BrancheFacade {
  @override
  Future<List<Branche>> getAllBranch() async {
    final response = await RequestREST(
      endpoint: '/branches',
    ).executeGet<List<Branche>>(BranchesListParser());

    return response;
  }
}

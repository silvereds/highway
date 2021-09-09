import 'package:flutter/cupertino.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/branches/branch_list_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/branch_repository.dart';

class BrancheNotifier extends ChangeNotifier implements BranchRepository {
  List<Branche> _branches = [];

  List<Branche> get branches => _branches;

  @override
  Future<List<Branche>> getAllBranch() async {
    try {
      final response = await RequestREST(
        endpoint: '/branches',
      ).executeGet<List<Branche>>(BranchesListParser());
      print(response);
      _branches = response;
      notifyListeners();
    } catch (e) {
      throw e;
    }
    return _branches;
  }
}

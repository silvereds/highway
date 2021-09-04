import 'package:mobile/src/core/entities/all.dart';

abstract class BranchRepository {
  Future<List<Branche>> getAllBranch();
}

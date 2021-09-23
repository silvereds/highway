// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:mobile/src/core/common/utils.dart';
// import 'package:mobile/src/core/entities/all.dart';
// import 'package:mobile/src/core/repository/branch_repository.dart';

// part 'branches_notifier.freezed.dart';

// @freezed
// abstract class BranchesState with _$BranchesState {
//   const BranchesState._();
//   const factory BranchesState.intial() = _Initial;
//   const factory BranchesState.loading() = _Loading;
//   const factory BranchesState.loaded(List<Branche> branches) = _Loaded;
//   const factory BranchesState.error([String message]) = _Error;
// }

// class BrancheNotifier extends StateNotifier<BranchesState> {
//   final BrancheRepository _branchesRepository;
//   BrancheNotifier(this._branchesRepository) : super(BranchesState.intial());

//   Future<void> getBranches() async {
//     try {
//       state = BranchesState.loading();
//       final listOfBranches = await _branchesRepository.getAllBranches();
//       state = BranchesState.loaded(listOfBranches);
//     } catch (e) {
//       state = BranchesState.error(parseApiError(e));
//     }
//   }
// }

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/branch_repository.dart';

part 'branch_notifier.freezed.dart';

@freezed
abstract class BranchesState with _$BranchesState {
  const BranchesState._();
  const factory BranchesState.initial() = _Initial;
  const factory BranchesState.loading() = _Loading;
  const factory BranchesState.loaded(List<Branche> branches) = _Loaded;
  const factory BranchesState.error([String error]) = _Error;
}

class BrancheNotifier extends StateNotifier<BranchesState> {
  final BrancheRepository _brancheRepository;
  BrancheNotifier(this._brancheRepository) : super(BranchesState.initial());

  Future<void> getBranches() async {
    try {
      state = BranchesState.loading();
      final branches = await _brancheRepository.getAllBranches();
      state = BranchesState.loaded(branches);
    } on SocketException {
      state = BranchesState.error('Please check your internet connexion.');
    } catch (e) {
      state = BranchesState.error('Failed to load data.');
    }
  }
}

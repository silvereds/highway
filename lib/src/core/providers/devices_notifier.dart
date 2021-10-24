import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/devices_repository.dart';
import 'package:mobile/src/core/services/services.dart';

part 'devices_notifier.freezed.dart';

/// *********************** Devices Infranstructre ********************** */

class DevicesServices implements DevicesRepository {
  SharedPrefService _prefService;
  static const _userKey = 'userInfo';

  DevicesServices(this._prefService);
  @override
  Future<List<Devices>> getAllDevices() async {
    List<Devices> _devices = [];

    try {
      final mapData = await _prefService.getObject(_userKey) ?? '';
      final user = User.fromJson(mapData);
      if (user != null) {
        final List<Accounts> accounts = user.accounts;

        for (Accounts account in accounts) {
          _devices = List.from(_devices)..addAll(account.devices);
        }

        // for (int i = 0; i < accounts.length; i++) {
        //   _devices = [...accounts[i].devices];
        // }
      }
      return _devices;
    } catch (e) {
      throw (e);
    }
  }
}

/// ************************* Devices State notifier ********************** */
// The states of devices
@freezed
abstract class DevicesState with _$DevicesState {
  const DevicesState._();
  const factory DevicesState.intial() = _Initial;
  const factory DevicesState.loadInProgress() = _LoadInProgress;
  const factory DevicesState.loadInSuccess(List<Devices> devices) =
      _LoadInSuccess;
  const factory DevicesState.loadFailure({String message}) = _LoadFailure;
}

/// ************************* Devices notifier (Application) ********************** */
///
class DevicesNotifier extends StateNotifier<DevicesState> {
  final DevicesServices _devicesServices;
  DevicesNotifier(this._devicesServices) : super(DevicesState.intial());

  Future<void> getListOfDevices() async {
    try {
      state = DevicesState.loadInProgress();
      final _listOfDevices = await _devicesServices.getAllDevices();
      state = DevicesState.loadInSuccess(_listOfDevices);
    } catch (e) {
      state = DevicesState.loadFailure(message: 'Failed to load data');
    }
  }
}

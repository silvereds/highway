import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/devices/devices_list_parser.dart';
import 'package:mobile/src/core/common/utils.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/devices_repository.dart';

part 'devices_notifier.freezed.dart';

/// *********************** Devices Infranstructre ********************** */

class DevicesServices implements DevicesRepository {
  List<Devices> _devices = [];

  @override
  Future<List<Devices>> getAllDevices() async {
    try {
      final response = await RequestREST(
        endpoint: '/platform/devices',
      ).executeGet<List<Devices>>(const DevicesListParser());
      _devices = response;
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

  Future<List<Devices>> getListOfDevices() async {
    try {
      state = DevicesState.intial();
      final _listOfDevices = await _devicesServices.getAllDevices();
      state = DevicesState.loadInSuccess(_listOfDevices);
      return _listOfDevices;
    } catch (e) {
      state = DevicesState.loadFailure(message: parseApiError(e));
      throw e;
    }
  }
}

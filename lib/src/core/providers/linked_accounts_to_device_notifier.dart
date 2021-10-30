import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/services/services.dart';

part 'linked_accounts_to_device_notifier.freezed.dart';

abstract class LinkedAccountToDevicesRepository {
  Future<Accounts> getAccountLinkToDevice(Devices device);
}

class LinkedAccountToDevicesInfrastructure
    extends LinkedAccountToDevicesRepository {
  SharedPrefService _prefService;
  static const _userKey = 'userInfo';

  LinkedAccountToDevicesInfrastructure(this._prefService);

  @override
  Future<Accounts> getAccountLinkToDevice(Devices deviceI) async {
    Accounts _account;
    try {
      final mapData = await _prefService.getObject(_userKey) ?? '';
      final user = User.fromJson(mapData);
      if (user != null) {
        final List<Accounts> accounts = user.accounts;

        for (Accounts account in accounts) {
          if (account.id == deviceI.accountId) {
            _account = account;
          }
        }
      }
      return _account;
    } catch (e) {
      throw (e);
    }
  }
}

@freezed
abstract class LinkedAccountToDevicesState with _$LinkedAccountToDevicesState {
  const LinkedAccountToDevicesState._();
  const factory LinkedAccountToDevicesState.intial() = _Init;
  const factory LinkedAccountToDevicesState.loadInProgress() = _Loading;
  const factory LinkedAccountToDevicesState.loadInSuccess(Accounts accounts) =
      _Loaded;
  const factory LinkedAccountToDevicesState.loadFailure({String message}) =
      _Failed;
}

class LinkedAccountsToDeviceNotifier
    extends StateNotifier<LinkedAccountToDevicesState> {
  final LinkedAccountToDevicesInfrastructure
      _linkedAccountToDevicesInfrastructure;
  LinkedAccountsToDeviceNotifier(this._linkedAccountToDevicesInfrastructure)
      : super(LinkedAccountToDevicesState.intial());

  Future<void> getAccountLinkedToDevices(Devices device) async {
    try {
      state = LinkedAccountToDevicesState.loadInProgress();
      final _account = await _linkedAccountToDevicesInfrastructure
          .getAccountLinkToDevice(device);
      state = LinkedAccountToDevicesState.loadInSuccess(_account);
    } catch (e) {
      state = LinkedAccountToDevicesState.loadFailure(message: e.toString());
    }
  }
}

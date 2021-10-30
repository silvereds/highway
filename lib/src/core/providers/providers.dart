import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/auth_notifier.dart';
import 'package:mobile/src/core/providers/devices_notifier.dart';
import 'package:mobile/src/core/services/prefs_service.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'linked_accounts_to_device_notifier.dart';

final sharedPrefsProvider = Provider((ref) => SharedPrefService());

abstract class AuthProvider {
  static final authProvider = StateNotifierProvider<AuthNotifier>(
    (ref) => AuthNotifier(
      ref.watch(sharedPrefsProvider),
    ),
  );
}

abstract class UserDetailProvider {
  static final userDetailProvider = FutureProvider<User>(
    (ref) async {
      final authProvider = ref.read(AuthProvider.authProvider);
      final user = await authProvider.getUserInfo();
      return user;
    },
  );
} // User detail information provider

final organisationProvider = FutureProvider<Organisation>((ref) async {
  final authProvider = ref.watch(AuthProvider.authProvider);
  final organisation = await authProvider.getUserOrganisation();
  return organisation;
});

final userAgentServiceProvider = Provider<UserAgentService>((ref) {
  return UserAgentService();
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final sharedPreferencesServicesProvider =
    Provider<SharedPrefService>((ref) => SharedPrefService());

// final brancheRepository = Provider((ref) => BrancheRepository());

// final brancheNotifier = StateNotifierProvider<BrancheNotifier>(
//   (ref) => BrancheNotifier(
//     ref.watch(brancheRepository),
//   ),
// );

/// *********************** Devices Providers ********************** */

final devicesServiceProvider = Provider<DevicesServices>((ref) {
  return DevicesServices(ref.watch(sharedPreferencesServicesProvider));
});

final devicesNotifierProvider = StateNotifierProvider<DevicesNotifier>((ref) {
  return DevicesNotifier(ref.watch(devicesServiceProvider));
});


final linkedAccountToDeviceProvider = Provider<LinkedAccountToDevicesInfrastructure>((ref) {
  return LinkedAccountToDevicesInfrastructure(ref.watch(sharedPreferencesServicesProvider));
});

final linkedAccountToDevicesNotifer =
    StateNotifierProvider<LinkedAccountsToDeviceNotifier>((ref) {
  return LinkedAccountsToDeviceNotifier(ref.watch(linkedAccountToDeviceProvider));
});

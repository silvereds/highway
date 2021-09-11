import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/auth_notifier.dart';
import 'package:mobile/src/core/providers/branch_notifier.dart';
import 'package:mobile/src/core/repository/branch_repository.dart';
import 'package:mobile/src/core/services/prefs_service.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefsProvider = Provider((ref) => SharedPrefService());

abstract class AuthProvider {
  static final authProvider = StateNotifierProvider<AuthNotifier>(
      (ref) => AuthNotifier(ref.watch(sharedPrefsProvider)));
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

final userAgentServiceProvider = Provider<UserAgentService>((ref) {
  return UserAgentService();
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final brancheRepository = Provider((ref) => BrancheRepository());

final brancheNotifier = StateNotifierProvider<BrancheNotifier>(
  (ref) => BrancheNotifier(
    ref.watch(brancheRepository),
  ),
);

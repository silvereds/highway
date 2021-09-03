import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/auth_notifier.dart';
import 'package:mobile/src/core/services/prefs_service.dart';

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
}

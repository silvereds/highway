import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/providers/auth_provider.dart';

abstract class AuthProvider {
  static final authProvider = StateNotifierProvider<Auth>((ref) => Auth());
}

abstract class UserDetailProvider {
  static final userDetailProvider = Provider<User>(
    (ref) {
      final authProvider = ref.read(AuthProvider.authProvider);
      final user = authProvider.userDetails;
      return user;
    },
  );
}

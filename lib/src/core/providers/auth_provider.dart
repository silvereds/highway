import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/src/core/entities/entities.dart';
import 'package:mobile/src/core/network/api_service.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';
import 'package:mobile/src/core/states/login/login_state.dart';

abstract class AuthProvider {
  static final authProvider = StateNotifierProvider<Auth>((ref) => Auth());
}

class Auth extends StateNotifier<UserState> implements AuthRepository {
  Auth() : super(UserState());

  @override
  Future<void> login(User user) async {
    final client = ApiService.create();

    try {
      state = UserState.loading();
      final userInfo = await client.loginUser(user);
      state = UserState.loaded();
    } catch (e) {
      state = UserState.error(message: 'Logging Failed');
    }
  }

  @override
  Future<void> resetPassword(String email) {}
}

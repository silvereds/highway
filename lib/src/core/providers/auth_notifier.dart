import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/json_parser.dart';
import 'package:mobile/src/core/api/json_parsers/reponse_parser.dart';
import 'package:mobile/src/core/api/json_parsers/transactions/transactions_list_parser.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/ui/views/reset_password_screen.dart';

part 'auth_provider.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.login() = Login;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure([String error]) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> implements AuthRepository {
  SharedPrefService _prefService;

  AuthNotifier(this._prefService) : super(const AuthState.initial());

  // User _user = User();

  static const _userKey = 'userInfo';
  static const _token = 'token';

  // User get userDetails => _user;

  /// Chech user statusb

  Future<void> checkAndUpdateStatus() async {
    state = (await isSigned())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  /// Get user cached info
  Future<User> getUserInfo() async {
    try {
      final user = await _prefService.getObject(_userKey);
      if (user != null) {
        return User.fromJson(user);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  /// Verified if the user is signed in
  Future<bool> isSigned() => getUserInfo().then((user) => user != null);

  /// Log the user
  @override
  Future<void> login(User user) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/login',
        data: user.toJson(),
      ).executePost<SimpleMessageResponse>(LoginResponseParser());

      print(response.toJson());

      state = AuthState.login();
    } catch (e) {
      throw e;
    }
  }

  /// Verify passcode send to the user by email
  @override
  Future<void> verifyPasscode(
    String email,
    String password,
    String passCode,
    String agent,
  ) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/verify-passcode',
        data: {
          'email': email,
          'password': password,
          'passcode': passCode,
          'agent': agent
        },
      ).executePost<User>(UserParser());

      _prefService.saveString('sessionId', response.session);
      _prefService.saveObject(_userKey, response.toJson());
      state = AuthState.authenticated();
    } catch (e) {
      throw e;
    }
  }

  /// Get the link to reset password
  /// This link should return the user to app into the
  /// [ResetPasswordScreen] in case the user has the app
  /// otherwise into the store
  @override
  Future<void> forgotPassword(String email) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/forgot-password',
        data: {
          'email': email,
        },
      ).executePost<SimpleMessageResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Reset password
  @override
  Future<void> resetPassword(
    String email,
    String password,
    String agent,
  ) async {
    final mapData = await _prefService.getObject(_userKey) ?? '';
    final user = User.fromJson(mapData);
    try {
      final response = await RequestREST(
        endpoint: '/auth/reset-password/${user.session}',
        data: {
          'password': password,
          'agent': agent,
          'email': email,
          'nonce': user.session,
        },
      ).executePost<SimpleMessageResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Logout user
  @override
  Future<void> logout() async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/logout',
      ).executePost<SimpleMessageResponse>(LoginResponseParser());

      print(response.toJson());
      await _prefService.removeObject(_userKey);
      state = AuthState.unauthenticated();
    } catch (e) {
      throw e;
    }
  }

  /// Get Auth JWT Token
  @override
  Future<void> getAuthToken() async {
    final mapData = await _prefService.getObject(_userKey) ?? '';
    final user = User.fromJson(mapData);

    try {
      final response = await RequestREST(
        endpoint: '/auth/session/${user.session}',
        data: {
          'session': user.session ?? '',
          'agent':
              await SharedPrefService().getString('deviceName') ?? 'mobile',
        },
      ).executePost<User>(UserParser());
      _prefService.saveString(_token, response.authorization);
      print(response.authorization);
    } catch (e) {
      throw e;
    }
  }

  Future<void> getAllTransactions() async {
    try {
      final response = await RequestREST(
        endpoint: '/transactions',
      ).executeGet<List<Transaction>>(TransactionListParser());

      print('Charges: ' + response.first.deviceFrom);
    } catch (e) {
      throw e;
    }
  }
}

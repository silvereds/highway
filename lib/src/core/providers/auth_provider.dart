import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/json_parser.dart';
import 'package:mobile/src/core/api/json_parsers/reponse_parser.dart';
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

class Auth extends StateNotifier<AuthState> implements AuthRepository {
  User _user = User();

  Auth() : super(const AuthState.initial());

  static const _userKey = 'userInfo';

  User get userDetails => _user;

  /// Chech user status

  Future<void> checkAndUpdateStatus() async {
    state = (await isSigned())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  /// Get user cached info
  Future<User> getUserInfo() async {
    try {
      final user = await SharedPrefService().getObject(_userKey);
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

      _user = response;

      SharedPrefService().saveString('sessionId', response.session);
      SharedPrefService().saveObject(_userKey, _user.toJson());
      state = AuthState.authenticated();
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
      await SharedPrefService().removeObject(_userKey);
      state = AuthState.unauthenticated();
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
    String nonce,
  ) async {
    try {
      final response = await RequestREST(
        endpoint: '/auth/reset-password/$nonce',
        data: {
          'password': password,
          'agent': agent,
          'email': email,
          'nonce': nonce,
        },
      ).executePost<SimpleMessageResponse>(LoginResponseParser());

      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }

  /// Get Auth JWT Token
  @override
  Future<void> getAuthToken(String sessionId, String agent) async {
    sessionId = await SharedPrefService()?.getString('sessionId') ?? '';

    try {
      final response = await RequestREST(
        endpoint: '/auth/session',
        data: {
          'session': sessionId,
          'agent': agent,
        },
      ).executePost<User>(UserParser());

      print('Session: ' + sessionId);
      print(response.toJson());
    } catch (e) {
      throw e;
    }
  }
}

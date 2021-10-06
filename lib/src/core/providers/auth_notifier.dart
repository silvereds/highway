import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/api/http_client.dart';
import 'package:mobile/src/core/api/json_parsers/json_parser.dart';
import 'package:mobile/src/core/api/json_parsers/organisation/organisation_parser.dart';
import 'package:mobile/src/core/api/json_parsers/reponse_parser.dart';
import 'package:mobile/src/core/common/shared_prefs_constants.dart';
import 'package:mobile/src/core/entities/all.dart';
import 'package:mobile/src/core/repository/auth_repository.dart';
import 'package:mobile/src/core/services/services.dart';
import 'package:mobile/src/ui/views/reset_password_screen.dart';

part 'auth_notifier.freezed.dart';

// Auth State
@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.login() = _Login;
  const factory AuthState.success() = _Sucess;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.logout() = _Logout;
  const factory AuthState.failure([dynamic error]) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> implements AuthRepository {
  SharedPrefService _prefService;

  AuthNotifier(this._prefService) : super(const AuthState.initial());

  static const _userKey = 'userInfo';
  User _user;
  Organisation _organisation;

  /// Check user status
  Future<void> checkAndUpdateStatus() async {
    state = (await isSigned())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  /// Get user cached info
  Future<User> getUserInfo() async {
    try {
      final user = await _prefService.getObject(_userKey);
      if (_user != null) {
        return _user;
      }
      return User.fromJson(user);
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
      ).executePost<SimpleMessageResponse>(const LoginResponseParser());

      print(response.toJson());

      state = AuthState.login();
    } catch (e) {
      throw e;
    }
  }

// Get user organisation
  @override
  Future<Organisation> getUserOrganisation() async {
    try {
      final mapData = await _prefService?.getObject(_userKey) ?? '';
      final user = User.fromJson(mapData);
      if (user != null) {
        final response = await RequestREST(
          endpoint:
              '/branches/${user.branch}/organisations/${user.organisation}',
        ).executeGet<Organisation>(const OrganisationParser());
        _organisation = response;
        print(response);
      }

      return _organisation;
    } catch (e) {
      throw (e);
    }
  }

  /// Verify passcode send to the user by email or sms
  @override
  Future<void> verifyPasscode(
    String email,
    String password,
    String passCode,
    String agent,
  ) async {
    try {
      state = AuthState.loading();
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
      _user = response;
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
    final agent = await _prefService.getString('deviceName');

    try {
      state = AuthState.loading();
      final response = await RequestREST(
        endpoint: '/auth/forgot-password',
        data: {
          'email': email,
          'agent': agent ?? '',
        },
      ).executePost<SimpleMessageResponse>(LoginResponseParser());
      state = AuthState.success();

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
    String passCode,
  ) async {
    final agent = await _prefService.getString('deviceName');
    try {
      state = AuthState.loading();
      final response = await RequestREST(
        endpoint: '/auth/reset-password/$passCode',
        data: {
          'email': email,
          'password': password,
          'agent': agent ?? 'mobile-',
        },
      ).executePost<SimpleMessageResponse>(LoginResponseParser());
      state = AuthState.success();

      print(response.toJson());
    } catch (e) {
      state = AuthState.failure(e);
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
      _user = null;
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
          'session': user?.session ?? '',
          'agent':
              await SharedPrefService()?.getString('deviceName') ?? 'mobile',
        },
      ).executePost<User>(UserParser());
      _prefService.saveString(
          PreferencesConstants.API_TOKEN, response.authorization);
      print('Token: ' + response.authorization);
    } catch (e) {
      throw e;
    }
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Login login() {
    return const _Login();
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _Authenticated authenticated() {
    return const _Authenticated();
  }

// ignore: unused_element
  _Logout logout() {
    return const _Logout();
  }

// ignore: unused_element
  _Failure failure([String error]) {
    return _Failure(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const _Initial._() : super._();
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AuthState {
  const _Loading._() : super._();
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;
}

/// @nodoc
class _$_Login extends _Login {
  const _$_Login() : super._();

  @override
  String toString() {
    return 'AuthState.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return login();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends AuthState {
  const _Login._() : super._();
  const factory _Login() = _$_Login;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated extends _Unauthenticated {
  const _$_Unauthenticated() : super._();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated extends AuthState {
  const _Unauthenticated._() : super._();
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc
class _$_Authenticated extends _Authenticated {
  const _$_Authenticated() : super._();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends AuthState {
  const _Authenticated._() : super._();
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc
class _$_Logout extends _Logout {
  const _$_Logout() : super._();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout extends AuthState {
  const _Logout._() : super._();
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Failure(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_Failure extends _Failure {
  const _$_Failure([this.error]) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult login(),
    @required TResult unauthenticated(),
    @required TResult authenticated(),
    @required TResult logout(),
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult logout(),
    TResult failure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult login(_Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult logout(_Logout value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(logout != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult login(_Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult logout(_Logout value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends AuthState {
  const _Failure._() : super._();
  const factory _Failure([String error]) = _$_Failure;

  String get error;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

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
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Login login() {
    return const Login();
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
    @required TResult failure(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult login(),
    TResult unauthenticated(),
    TResult authenticated(),
    TResult failure(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial extends Initial {
  const _$Initial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
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
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
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
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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

abstract class Initial extends AuthState {
  const Initial._() : super._();
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading extends Loading {
  const _$Loading() : super._();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
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
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
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
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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

abstract class Loading extends AuthState {
  const Loading._() : super._();
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;
}

/// @nodoc
class _$Login extends Login {
  const _$Login() : super._();

  @override
  String toString() {
    return 'AuthState.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Login);
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
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
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
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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

abstract class Login extends AuthState {
  const Login._() : super._();
  const factory Login() = _$Login;
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
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
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
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
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
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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
    @required TResult failure(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
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
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult login(Login value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(login != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult login(Login value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
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

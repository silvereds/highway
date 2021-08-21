// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  Server server([String message]) {
    return Server(
      message,
    );
  }

// ignore: unused_element
  Storage storage() {
    return const Storage();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult server(String message),
    @required TResult storage(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult server(String message),
    TResult storage(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult server(Server value),
    @required TResult storage(Storage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult server(Server value),
    TResult storage(Storage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerCopyWith<$Res> {
  factory $ServerCopyWith(Server value, $Res Function(Server) then) =
      _$ServerCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(Server _value, $Res Function(Server) _then)
      : super(_value, (v) => _then(v as Server));

  @override
  Server get _value => super._value as Server;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Server(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Server extends Server {
  const _$Server([this.message]) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Server &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ServerCopyWith<Server> get copyWith =>
      _$ServerCopyWithImpl<Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult server(String message),
    @required TResult storage(),
  }) {
    assert(server != null);
    assert(storage != null);
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult server(String message),
    TResult storage(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult server(Server value),
    @required TResult storage(Storage value),
  }) {
    assert(server != null);
    assert(storage != null);
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult server(Server value),
    TResult storage(Storage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class Server extends AuthFailure {
  const Server._() : super._();
  const factory Server([String message]) = _$Server;

  String get message;
  @JsonKey(ignore: true)
  $ServerCopyWith<Server> get copyWith;
}

/// @nodoc
abstract class $StorageCopyWith<$Res> {
  factory $StorageCopyWith(Storage value, $Res Function(Storage) then) =
      _$StorageCopyWithImpl<$Res>;
}

/// @nodoc
class _$StorageCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $StorageCopyWith<$Res> {
  _$StorageCopyWithImpl(Storage _value, $Res Function(Storage) _then)
      : super(_value, (v) => _then(v as Storage));

  @override
  Storage get _value => super._value as Storage;
}

/// @nodoc
class _$Storage extends Storage {
  const _$Storage() : super._();

  @override
  String toString() {
    return 'AuthFailure.storage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Storage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult server(String message),
    @required TResult storage(),
  }) {
    assert(server != null);
    assert(storage != null);
    return storage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult server(String message),
    TResult storage(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (storage != null) {
      return storage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult server(Server value),
    @required TResult storage(Storage value),
  }) {
    assert(server != null);
    assert(storage != null);
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult server(Server value),
    TResult storage(Storage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class Storage extends AuthFailure {
  const Storage._() : super._();
  const factory Storage() = _$Storage;
}

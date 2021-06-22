import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/src/core/entities/entities.dart';

part 'login_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState() = Initial;
  const factory UserState.loading() = Loading;
  const factory UserState.loaded() = UserData;
  const factory UserState.error({String message}) = Error;
}

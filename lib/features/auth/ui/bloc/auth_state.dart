part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.authorized(UserEntity userEntity) = Authorized;
  const factory AuthState.unauthorized(UserEntity userEntity) = Unauthorized;
  const factory AuthState.loading(UserEntity userEntity) = Loading;
  const factory AuthState.error(UserEntity userEntity, [String? message]) = Error;
}

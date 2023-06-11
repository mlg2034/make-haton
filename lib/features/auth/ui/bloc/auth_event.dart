part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn() = SignIn;
  const factory AuthEvent.signOut() = SignOut;
}

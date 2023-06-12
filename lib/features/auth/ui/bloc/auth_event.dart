part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({String? email,}) = SignIn;
  const factory AuthEvent.signInEmail(String email, ) = SignInEmail;
  const factory AuthEvent.signOut({String? email,}) = SignOut;
  const factory AuthEvent.getUser({String? email,}) = GetUser;
}

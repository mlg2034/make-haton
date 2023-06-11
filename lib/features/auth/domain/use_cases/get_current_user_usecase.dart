import 'package:firebase_auth/firebase_auth.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';

class SigningInUseCase {
  final AppAuthRepository _repository;

  SigningInUseCase(this._repository);

  Future<User?> execute() {
    final user = _repository.signInWithGoogle();

    return user;
  }
}

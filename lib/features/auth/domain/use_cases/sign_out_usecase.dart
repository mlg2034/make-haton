import 'package:firebase_auth/firebase_auth.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase {
  final AppAuthRepository _repository;

  SignOutUseCase(this._repository);

  Future<User?> execute() async {
    await _repository.signOut();
    final user = _repository.getUser();

    return user;
  }
}

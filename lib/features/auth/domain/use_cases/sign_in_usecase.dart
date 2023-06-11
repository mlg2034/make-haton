import 'package:firebase_auth/firebase_auth.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';

class GetUserUseCase {
  final AppAuthRepository _repository;

  GetUserUseCase(this._repository);

  Future<User?> execute() {
    final user = _repository.getUser();

    return user;
  }
}

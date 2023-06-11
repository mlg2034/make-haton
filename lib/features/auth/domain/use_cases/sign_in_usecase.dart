import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';

class SigningInUseCase {
  final AppAuthRepository _repository;

  SigningInUseCase(this._repository);

  Future<UserEntity?>? execute() {
    final user = _repository.signInWithGoogle();

    return user;
  }
}

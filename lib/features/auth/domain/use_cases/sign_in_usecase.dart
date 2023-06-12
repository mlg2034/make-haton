import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class SigningInUseCase extends UseCase {
  final AppAuthRepository _repository;

  SigningInUseCase(this._repository);

  @override
  Future<UserEntity?>? execute() {
    final user = _repository.signInWithGoogle();

    return user;
  }
}

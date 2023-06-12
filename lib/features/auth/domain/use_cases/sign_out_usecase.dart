import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class SignOutUseCase extends UseCase {
  final AppAuthRepository _repository;

  SignOutUseCase(this._repository);

  @override
  Future<UserEntity?>? execute() async {
    await _repository.signOut();
    final user = _repository.getUser();

    return user;
  }
}

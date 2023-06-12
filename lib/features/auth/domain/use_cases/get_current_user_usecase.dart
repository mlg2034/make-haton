import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class GetUserUseCase extends UseCase {
  final AppAuthRepository _repository;

  GetUserUseCase(this._repository);

  @override
  Future<UserEntity?>? execute() {
    final user = _repository.getUser();

    return user;
  }
}

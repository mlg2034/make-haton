import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/repositories/auth_repository.dart';

class GetUserUseCase {
  final AppAuthRepository _repository;

  GetUserUseCase(this._repository);

  Future<UserEntity?>? execute() {
    final user = _repository.getUser();

    return user;
  }
}

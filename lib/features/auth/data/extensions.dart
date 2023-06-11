import 'package:make_haton/features/auth/data/models/user_model.dart';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';

extension UserModelMapping on UserModel {
  UserEntity toEntity() {
    return UserEntity(name: displayName ?? '', id: uid);
  }
}

extension UserEntityMapping on UserEntity {
  UserModel toModel() {
    return UserModel(uid: id);
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  //TODO:add fileds of our entity
  factory UserEntity({required String name, required String id}) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

  factory UserEntity.empty({@Default('') String name, @Default('') String id}) = _EmptyUser;
}

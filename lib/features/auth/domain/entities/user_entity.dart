import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  //TODO:add fileds of our entity
  factory UserEntity({
    required String name,
    required String id,
    @Default(0) int practicedWords,
    @Default(0) int coins,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

  factory UserEntity.empty({
    @Default('') String name,
    @Default('') String id,
    @Default(0) int practicedWords,
    @Default(0) int coins,
  }) = _EmptyUser;
}

@freezed
class Settings with _$Settings{
  factory Settings({
    @Default(false) bool notificationsEnabled,
    @Default(false) bool soundEnabled,
    @Default('kk-KZ') String locale,
    @Default(false) bool darkThemeEnabled,
  }) = _Settings;
}
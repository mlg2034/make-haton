// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      name: json['name'] as String,
      id: json['id'] as String,
      practicedWords: json['practicedWords'] as int? ?? 0,
      coins: json['coins'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'practicedWords': instance.practicedWords,
      'coins': instance.coins,
      'runtimeType': instance.$type,
    };

_$_EmptyUser _$$_EmptyUserFromJson(Map<String, dynamic> json) => _$_EmptyUser(
      name: json['name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      practicedWords: json['practicedWords'] as int? ?? 0,
      coins: json['coins'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_EmptyUserToJson(_$_EmptyUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'practicedWords': instance.practicedWords,
      'coins': instance.coins,
      'runtimeType': instance.$type,
    };

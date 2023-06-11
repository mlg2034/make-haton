import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:make_haton/features/character/domain/entity/customization_items_entity.dart';

part 'character_entity.freezed.dart';

@freezed
class CharacterEntity with _$CharacterEntity {
  factory CharacterEntity({
    required String userUid,
    required String clothesId,
    required String colorId,
    required String eyeId,
    required String hatId,
    required CustomizationItemsEntity itemsEntity,
  }) = _CharacterEntity;

  factory CharacterEntity.fromJson(Map<String, dynamic> json) => _$CharacterEntityFromJson(json);

}

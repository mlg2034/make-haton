import 'package:freezed_annotation/freezed_annotation.dart';

part 'customization_items_entity.freezed.dart';

@freezed
class CustomizationItemsEntity with _$CustomizationItemsEntity {
  factory CustomizationItemsEntity({
    required String svgPicture,
    required String title,
    required int price,
    required bool isBought,
    required bool isSelected,
  }) = _CustomizationItemsEntity;
}

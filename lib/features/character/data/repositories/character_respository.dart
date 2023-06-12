import 'package:ui_kit/ui_kit.dart';

class CharacterRepository {
  final Map<String, String> optionMap = Map.fromIterables(
    [
      'Color',
      'Hats',
      "Clothes",
      'Eyes',
    ],
    [
      UiKitAssets.customizationsOptions.color.keyName,
      UiKitAssets.customizationsOptions.hat.keyName,
      UiKitAssets.customizationsOptions.clothes.keyName,
      UiKitAssets.customizationsOptions.eyes.keyName,
    ],
  );
   Map<String, Map<String, String>> get optionMapDetailed => Map.fromIterables(
    [
      'Color',
      'Hats',
      "Clothes",
      'Eyes',
    ],
    [
      colorMap,
      hatMap,
      chestMap,
      eyesMap,
    ],
  );

  final Map<String, String> chestMap = Map.fromIterables(
    [
      'No Clothes',
      'Cloak',
      'Shirt',
      'Hoodie',
    ],
    [
      UiKitAssets.customizations.none1.keyName,
      UiKitAssets.customizations.cloak.keyName,
      UiKitAssets.customizations.shirt.keyName,
      UiKitAssets.customizations.hoodie.keyName,
    ],
  );

  final Map<String, String> eyesMap = Map.fromIterables(
    [
      'Default Eyes',
      'Wink Eyes',
      'Angry Eyes',
      'Cutre Eyes',
    ],
    [
      UiKitAssets.customizations.eyesDefault.keyName,
      UiKitAssets.customizations.eyesWink.keyName,
      UiKitAssets.customizations.eyesAngry.keyName,
      UiKitAssets.customizations.eyesCute.keyName,
    ],
  );

  final Map<String, String> hatMap = Map.fromIterables(
    [
      'NO Hats',
      'Cap',
      'Scarf',
      'Hat',
    ],
    [
      UiKitAssets.customizations.none1.keyName,
      UiKitAssets.customizations.cap.keyName,
      UiKitAssets.customizations.scarf.keyName,
      UiKitAssets.customizations.hat.keyName,
    ],
  );



  final Map<String, String> colorMap = Map.fromIterables(
    [
      'Blue',
      'Red',
      'Green',
      'Yellow',
      'Purple',
    ],
    [
      UiKitAssets.customizations.colorBlue.keyName,
      UiKitAssets.customizations.colorRed.keyName,
      UiKitAssets.customizations.colorGreen.keyName,
      UiKitAssets.customizations.colorYellow.keyName,
      UiKitAssets.customizations.colorPurple.keyName,
    ],
  );

}

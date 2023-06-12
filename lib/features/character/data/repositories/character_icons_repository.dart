import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharacterIconRepository {
  final List<SvgPicture> chracterColorIcons = [
    SvgPicture.asset(UiKitAssets.customizations.colorBlue.keyName),
    SvgPicture.asset(UiKitAssets.customizations.colorGreen.keyName),
    SvgPicture.asset(UiKitAssets.customizations.colorPurple.keyName),
    SvgPicture.asset(UiKitAssets.customizations.colorRed.keyName),
    SvgPicture.asset(UiKitAssets.customizations.colorYellow.keyName),
  ];
  final List<SvgPicture> characterEyesIcons = [
    SvgPicture.asset(UiKitAssets.customizations.eyesAngry.keyName),
    SvgPicture.asset(UiKitAssets.customizations.eyesCute.keyName),
    SvgPicture.asset(UiKitAssets.customizations.eyesDefault.keyName),
    SvgPicture.asset(UiKitAssets.customizations.eyesWink.keyName),
  ];

  final List<SvgPicture> characterClothesIcons = [
    SvgPicture.asset(UiKitAssets.customizations.cloak.keyName),
    SvgPicture.asset(UiKitAssets.customizations.hoodie.keyName),
    SvgPicture.asset(UiKitAssets.customizations.shirt.keyName),
    SvgPicture.asset(UiKitAssets.customizations.none1.keyName),
  ];
  final List<SvgPicture> characterHatsIcons = [
    SvgPicture.asset(UiKitAssets.customizations.cap.keyName),
    SvgPicture.asset(UiKitAssets.customizations.hat.keyName),
    SvgPicture.asset(UiKitAssets.customizations.scarf.keyName),
    SvgPicture.asset(UiKitAssets.customizations.none1.keyName),
  ];
}

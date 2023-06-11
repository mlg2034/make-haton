import 'package:flutter_svg/svg.dart';

import '../../repository/character_repository/character_icons_repository.dart';
import '../../repository/character_repository/character_text_respository.dart';

class CharacterClothesUseCase {
  final CharacterIconRepository characterIconRepository;
  final CharacterTextRepository characterTextRepository;
  CharacterClothesUseCase(
      {required this.characterIconRepository, required this.characterTextRepository});
  List<SvgPicture> getCharacterClothesIcon() {
    return characterIconRepository.characterClothesIcons;
  }

  List<String> getCharacterClothesText() {
    return characterTextRepository.characterClothesText;
  }
}

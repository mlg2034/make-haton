import 'package:flutter_svg/svg.dart';

import '../../repository/character_repository/character_icons_repository.dart';
import '../../repository/character_repository/character_text_respository.dart';

class CharacterColorsUseCase {
  final CharacterIconRepository characterIconRepository;
  final CharacterTextRepository characterTextRepository;
  CharacterColorsUseCase(
      {required this.characterIconRepository, required this.characterTextRepository});
  List<SvgPicture> getCharacterColorsIcon() {
    return characterIconRepository.chracterColorIcons;
  }

  List<String> getCharacterColorsText() {
    return characterTextRepository.chracterColorText;
  }
}

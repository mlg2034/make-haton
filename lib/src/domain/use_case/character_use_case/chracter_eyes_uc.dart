import 'package:flutter_svg/svg.dart';
import 'package:make_haton/src/domain/repository/character_repository/character_text_respository.dart';

import '../../repository/character_repository/character_icons_repository.dart';

class CharacterColorUseCase {
  final CharacterIconRepository characterIconRepository;
  final CharacterTextRepository characterTextRepository;
  CharacterColorUseCase(
      {required this.characterIconRepository, required this.characterTextRepository});
  List<SvgPicture> getCharacterColorIcon() {
    return characterIconRepository.chracterColorIcons;
  }

  List<String> getCharacterColorsText() {
    return characterTextRepository.chracterColorText;
  }
}

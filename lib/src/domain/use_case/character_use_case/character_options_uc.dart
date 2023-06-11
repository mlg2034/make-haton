import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/src/domain/repository/character_repository/character_text_respository.dart';

import '../../repository/character_repository/character_icons_repository.dart';

class CharacterOptionsUseCase {
  final CharacterIconRepository characterIconRepository;
final CharacterTextRepository characterTextRepository;
  CharacterOptionsUseCase({required this.characterIconRepository , required this.characterTextRepository});

  List<SvgPicture> getCharacterOptionsIcon() {
    return characterIconRepository.characterOptionsIcons;
  }
  List<String> getCharacterOptionsText(){
    return characterTextRepository.characterOptionsText;
  }
}

import 'package:flutter_svg/svg.dart';
import 'package:make_haton/src/domain/repository/character_repository/character_text_respository.dart';

import '../../repository/character_repository/character_icons_repository.dart';

class CharacterHatsUseCase{
  final CharacterIconRepository characterIconRepository;
  final CharacterTextRepository characterTextRepository;
  CharacterHatsUseCase({required this.characterIconRepository , required this.characterTextRepository});
   List<SvgPicture> getCharacterHatsIcon() {
    return characterIconRepository.characterHatsIcons;
  }
  List<String> getCharacterHatsText(){
    return characterTextRepository.characterHatsText;
  }
  
}
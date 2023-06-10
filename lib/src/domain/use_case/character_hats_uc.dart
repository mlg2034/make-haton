import 'package:flutter_svg/svg.dart';

import '../repository/firebase/character_rebository.dart';

class CharacterHatsUseCase{
  final CharacterRepository optionsIconRepository;
  CharacterHatsUseCase({required this.optionsIconRepository});
   List<SvgPicture> getCharacterHats() {
    return optionsIconRepository.characterHats;
  }
}
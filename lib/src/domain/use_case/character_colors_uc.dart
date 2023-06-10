import 'package:flutter_svg/svg.dart';

import '../repository/firebase/character_rebository.dart';

class CharacterColorsUseCase{
  final CharacterRepository optionsIconRepository;
  CharacterColorsUseCase({required this.optionsIconRepository});
  List<SvgPicture> getCharacterColors() {
    return optionsIconRepository.chracterColor;
  }
}
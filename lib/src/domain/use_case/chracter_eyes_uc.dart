import 'package:flutter_svg/svg.dart';

import '../repository/firebase/character_rebository.dart';

class CharacterColorUseCase{
  final CharacterRepository optionsIconRepository;
  CharacterColorUseCase({required this.optionsIconRepository});
  List<SvgPicture> getCharacterColor() {
    return optionsIconRepository.chracterColor;
  }
}
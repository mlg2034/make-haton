import 'package:flutter_svg/svg.dart';

import '../repository/firebase/character_rebository.dart';

class CharacterClothesUseCase{
  final CharacterRepository optionsIconRepository;
  CharacterClothesUseCase({required this.optionsIconRepository});
  List<SvgPicture> getCharacterClothes() {
    return optionsIconRepository.characterClothes;
  }
}
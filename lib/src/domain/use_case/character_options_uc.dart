import 'package:flutter_svg/flutter_svg.dart';

import '../repository/firebase/character_rebository.dart';

class CharacterOptionsUseCase {
  final CharacterRepository optionsIconRepository;

  CharacterOptionsUseCase({required this.optionsIconRepository});

  List<SvgPicture> getCharacterOptions() {
    return optionsIconRepository.characterOptions;
  }
}

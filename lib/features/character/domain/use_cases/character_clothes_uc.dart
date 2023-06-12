import 'package:flutter_svg/svg.dart';
import 'package:make_haton/features/character/data/repositories/character_icons_repository.dart';
import 'package:make_haton/features/character/data/repositories/character_text_respository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class CharacterClothesUseCase extends UseCase {
  final CharacterIconRepository _characterIconRepository;
  final CharacterTextRepository _characterTextRepository;

  CharacterClothesUseCase({
    required CharacterIconRepository characterIconRepository,
    required CharacterTextRepository characterTextRepository,
  })  : _characterTextRepository = characterTextRepository,
        _characterIconRepository = characterIconRepository;

  List<SvgPicture> getCharacterClothesIcon() {
    return _characterIconRepository.characterClothesIcons;
  }

  List<String> getCharacterClothesText() {
    return _characterTextRepository.characterClothesText;
  }

  @override
  execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

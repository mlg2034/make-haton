import 'package:flutter_svg/svg.dart';
import 'package:make_haton/features/character/data/repositories/character_icons_repository.dart';
import 'package:make_haton/features/character/data/repositories/character_text_respository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class CharacterColorsUseCase extends UseCase {
  final CharacterIconRepository _characterIconRepository;
  final CharacterTextRepository _characterTextRepository;

  CharacterColorsUseCase({
    required CharacterIconRepository characterIconRepository,
    required CharacterTextRepository characterTextRepository,
  })  : _characterTextRepository = characterTextRepository,
        _characterIconRepository = characterIconRepository;

  List<SvgPicture> getCharacterColorsIcon() {
    return _characterIconRepository.chracterColorIcons;
  }

  List<String> getCharacterColorsText() {
    return _characterTextRepository.characterColorText;
  }

  @override
  execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

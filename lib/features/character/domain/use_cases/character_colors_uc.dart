import 'package:flutter_svg/svg.dart';
import 'package:make_haton/features/character/data/repositories/character_icons_repository.dart';
import 'package:make_haton/features/character/data/repositories/character_respository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class CharacterColorsUseCase extends UseCase {
  final CharacterIconRepository _characterIconRepository;
  final CharacterRepository _characterTextRepository;

  CharacterColorsUseCase({
    required CharacterIconRepository characterIconRepository,
    required CharacterRepository characterTextRepository,
  })  : _characterTextRepository = characterTextRepository,
        _characterIconRepository = characterIconRepository;

  List<SvgPicture> getCharacterColorsIcon() {
    return _characterIconRepository.chracterColorIcons;
  }

  getCharacterColorsText() {
    return _characterTextRepository.colorMap;
  }

  @override
  execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

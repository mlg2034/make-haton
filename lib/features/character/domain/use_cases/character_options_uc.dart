import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/features/character/data/repositories/character_icons_repository.dart';
import 'package:make_haton/features/character/data/repositories/character_respository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class CharacterOptionsUseCase extends UseCase {
  final CharacterIconRepository _characterIconRepository;
  final CharacterRepository _characterTextRepository;

  CharacterOptionsUseCase({
    required CharacterIconRepository characterIconRepository,
    required CharacterRepository characterTextRepository,
  })  : _characterTextRepository = characterTextRepository,
        _characterIconRepository = characterIconRepository;

  // List<SvgPicture> getCharacterOptionsIcon() {
  //   return _characterIconRepository.characterOptionsIcons;
  // }
  //
  // List<String> getCharacterOptionsText() {
  //   return _characterTextRepository.characterOptionsText;
  // }

  @override
  execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

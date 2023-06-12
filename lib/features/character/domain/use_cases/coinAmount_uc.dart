import 'package:make_haton/features/character/data/repositories/character_icons_repository.dart';
import 'package:make_haton/src/domain/use_cases/base_use_case/usecase.dart';

class CoinAmountUseCase extends UseCase {
  final CharacterIconRepository _characterIconRepository;

  CoinAmountUseCase({
    required CharacterIconRepository characterIconRepository,
  }) : _characterIconRepository = characterIconRepository;

  Future<int> getCoinAmount() async {
    return _characterIconRepository.coinAmount;
  }

  @override
  execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

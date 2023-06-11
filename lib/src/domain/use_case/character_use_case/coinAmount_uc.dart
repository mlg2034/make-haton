import '../../repository/character_repository/character_icons_repository.dart';

class CoinAmountUseCase {
  final CharacterIconRepository characterIconRepository;
  CoinAmountUseCase({required this.characterIconRepository});

  Future<int> getCoinAmount() async {
    return characterIconRepository.coinAmount;
  }
}

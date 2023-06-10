import '../repository/firebase/character_rebository.dart';

class CoinAmountUseCase{
  final CharacterRepository optionsIconRepository;
  CoinAmountUseCase({required this.optionsIconRepository});

  Future<int> getCoinAmount() async {
    return optionsIconRepository.coinAmount;
  }
}
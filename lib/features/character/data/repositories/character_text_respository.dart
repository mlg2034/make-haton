class CharacterTextRepository {
  final List<String> _characterOptionsText = [
    'Color',
    'Hats',
    "Clothes",
    'Eyes',
  ];
  final List<String> _characterClothesText = [
    'No Clothes',
    'Cloak',
    'Shirt',
    'Hoodie',
  ];
  final List<String> _characterEyesText = [
    'Default Eyes',
    'Wink Eyes',
    'Angry Eyes',
    'Cutre Eyes',
  ];
  final List<String> _characterHatsText = [
    'NO Hats',
    'Cap',
    'Scarf',
    'Hat',
  ];
  final List<String> _chracterColorText = [
    'Blue',
    'Red',
    'Green',
    'Yellow',
    'Purple',
  ];

  List<String> get characterOptionsText => _characterOptionsText;
  List<String> get characterClothesText => _characterClothesText;
  List<String> get characterEyesText => _characterEyesText;
  List<String> get characterHatsText => _characterHatsText;
  List<String> get characterColorText => _chracterColorText;
}

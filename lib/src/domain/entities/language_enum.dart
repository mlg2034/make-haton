import 'dart:ui';

enum Language {
  english(
    Locale('en', 'US'),
    'English',
  ),
  russian(
    Locale('ru', 'RU'),
    'Russian',
  ),
  kazakh(
    Locale('kk', 'KZ'),
    'Kazakh',
  );

  const Language(this.value, this.text);

  final Locale value;
  final String text;
}

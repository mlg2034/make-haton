import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get selectedLanguage => 'Русский';

  @override
  String get language => 'Язык';

  @override
  String get settings => 'Настройки';

  @override
  String get dark_theme => 'Тёмная тема';

  @override
  String get sounds => 'Звуки';

  @override
  String get notifications => 'Уведомления';

  @override
  String get privacy_policy => 'Политика конфиденциальности';

  @override
  String get terms_of_service => 'Условия Пользования';

  @override
  String get engLangTitle => 'Английский';

  @override
  String get rusLangTitle => 'Русский';

  @override
  String get kazLangTitle => 'Казахский';

  @override
  String get hello => 'Привет';

  @override
  String get welcome => 'Добро пожаловать в WordMentor! Здесь учат словам!';

  @override
  String get authorize => 'Авторизуйтесь чтобы начать!';

  @override
  String get continueWithGoogle => 'Продолжить с Google';

  @override
  String get continueWithApple => 'Продолжить с AppleID';

  @override
  String get lesson => 'Урок';

  @override
  String get learn_the_world => 'УЧИТЕ СЛОВА ИЗ';

  @override
  String get transport => 'ТРАНСПОРТ';

  @override
  String get category => 'КАТЕГОРИИ';

  @override
  String get start => 'НАЧАТЬ';

  @override
  String get book => 'КНИГА';

  @override
  String get learn => 'УЧИТЬ';

  @override
  String get check => 'ПРОВЕРИТЬ';

  @override
  String get fill_the_blank => 'ПОДСТАВЬТЕ ПРАВИЛЬНО БУКВУ';

  @override
  String get got_it => 'ПОНЯТНО';

  @override
  String get learn_session => 'Learn Session';

  @override
  String get example_help_main_text => 'During the Learn you have to learn words that are given. These words are from one collection. After learning them, your attention will be challenged, you will have to fill the blank Letter in each Word. The full process of the session:';

  @override
  String get example_help_first_sub_text => '1. Learn a Word';

  @override
  String get example_help_second_sub_text => '2. Learn example of its use in sentences';

  @override
  String get example_help_third_sub_text => '3. Fill a blank Letter in a Word';

  @override
  String get just_follow => 'Just follow this process!';

  @override
  String get book_example_one_sentences => 'An item that people read to gain knowledge';

  @override
  String book_example_two_sentences(Object val) {
    return 'THE $val';
  }

  @override
  String wordsLearnedTitle(Object count) {
    return 'PRACTICED $count words today';
  }
}

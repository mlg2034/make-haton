import 'app_localizations.dart';

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get selectedLanguage => 'Қазақша';

  @override
  String get language => 'Тіл';

  @override
  String get settings => 'Параметрлер';

  @override
  String get dark_theme => 'Қараңғы тақырып';

  @override
  String get sounds => 'Дауыстар';

  @override
  String get notifications => 'Хабарлама';

  @override
  String get privacy_policy => 'Құпиялылық саясаты';

  @override
  String get terms_of_service => 'Қызмет Көрсету Шарттары';

  @override
  String get engLangTitle => 'Ағылшынша';

  @override
  String get rusLangTitle => 'Орсыша';

  @override
  String get kazLangTitle => 'Қазақша';

  @override
  String get hello => 'Сәлем';

  @override
  String get welcome => 'WordMentor бағдарламасына қош келдіңіз! Мұнда сіз сөздерді үйрене аласыз!';

  @override
  String get authorize => 'Сөздерді үйрену үшін жүйеге кіріңіз';

  @override
  String get continueWithGoogle => 'Google-мен жалғастыру';

  @override
  String get continueWithApple => 'AppleID-мен жалғастыру';

  @override
  String get lesson => 'Сабақ';

  @override
  String get learn_the_world => 'СӨЗДЕРДІ ҮЙРЕНІҢІЗ';

  @override
  String get transport => 'КӨЛІК';

  @override
  String get category => 'САНАТ';

  @override
  String get start => 'БАСТАУ';

  @override
  String get book => 'КІТАП';

  @override
  String get learn => 'ОҚУ';

  @override
  String get check => 'ТЕКСЕРУ';

  @override
  String get fill_the_blank => 'БОС ОРЫНАДЫ ТОЛТЫРЫНЫЗ';

  @override
  String get got_it => 'ТҮСІНІКТІ';

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

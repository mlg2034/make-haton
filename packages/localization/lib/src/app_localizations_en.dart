import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get selectedLanguage => 'English';

  @override
  String get language => 'Language';

  @override
  String get settings => 'Settings';

  @override
  String get dark_theme => 'Dark Theme';

  @override
  String get sounds => 'Sounds';

  @override
  String get notifications => 'Notifications';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get terms_of_service => 'Terms of Service';

  @override
  String get engLangTitle => 'English';

  @override
  String get rusLangTitle => 'Russian';

  @override
  String get kazLangTitle => 'Kazakh';

  @override
  String get hello => 'Hello';

  @override
  String get welcome => 'Welcome to the WordMentor! Here you can learn words!';

  @override
  String get authorize => 'Authorize to Learn Words!';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get continueWithApple => 'Continue with AppleID';

  @override
  String get lesson => 'Lesson';

  @override
  String get learn_the_world => 'LEARN THE WORDS FROM';

  @override
  String get transport => 'TRANSPORT';

  @override
  String get category => 'CATEGORY';

  @override
  String get start => 'START';

  @override
  String get book => 'BOOK';

  @override
  String get learn => 'LEARN';

  @override
  String get check => 'CHECK';

  @override
  String get fill_the_blank => 'FILL THE BLANK LETTER';

  @override
  String get got_it => 'GOT IT';

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

  @override
  String get welcomeText => '👋 Good morning,';
}

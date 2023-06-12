import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'src/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('kk'),
    Locale('ru')
  ];

  /// No description provided for @selectedLanguage.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get selectedLanguage;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @settings.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get settings;

  /// No description provided for @dark_theme.
  ///
  /// In ru, this message translates to:
  /// **'Тёмная тема'**
  String get dark_theme;

  /// No description provided for @sounds.
  ///
  /// In ru, this message translates to:
  /// **'Звуки'**
  String get sounds;

  /// No description provided for @notifications.
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get notifications;

  /// No description provided for @privacy_policy.
  ///
  /// In ru, this message translates to:
  /// **'Политика конфиденциальности'**
  String get privacy_policy;

  /// No description provided for @terms_of_service.
  ///
  /// In ru, this message translates to:
  /// **'Условия Пользования'**
  String get terms_of_service;

  /// No description provided for @engLangTitle.
  ///
  /// In ru, this message translates to:
  /// **'Английский'**
  String get engLangTitle;

  /// No description provided for @rusLangTitle.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get rusLangTitle;

  /// No description provided for @kazLangTitle.
  ///
  /// In ru, this message translates to:
  /// **'Казахский'**
  String get kazLangTitle;

  /// No description provided for @hello.
  ///
  /// In ru, this message translates to:
  /// **'Привет'**
  String get hello;

  /// No description provided for @welcome.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать в WordMentor! Здесь учат словам!'**
  String get welcome;

  /// No description provided for @authorize.
  ///
  /// In ru, this message translates to:
  /// **'Авторизуйтесь чтобы начать!'**
  String get authorize;

  /// No description provided for @continueWithGoogle.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить с Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithApple.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить с AppleID'**
  String get continueWithApple;

  /// No description provided for @continueWithEmail.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить с Email'**
  String get continueWithEmail;

  /// No description provided for @lesson.
  ///
  /// In ru, this message translates to:
  /// **'Урок'**
  String get lesson;

  /// No description provided for @learn_the_world.
  ///
  /// In ru, this message translates to:
  /// **'УЧИТЕ СЛОВА ИЗ'**
  String get learn_the_world;

  /// No description provided for @transport.
  ///
  /// In ru, this message translates to:
  /// **'ТРАНСПОРТ'**
  String get transport;

  /// No description provided for @category.
  ///
  /// In ru, this message translates to:
  /// **'КАТЕГОРИИ'**
  String get category;

  /// No description provided for @start.
  ///
  /// In ru, this message translates to:
  /// **'НАЧАТЬ'**
  String get start;

  /// No description provided for @book.
  ///
  /// In ru, this message translates to:
  /// **'КНИГА'**
  String get book;

  /// No description provided for @learn.
  ///
  /// In ru, this message translates to:
  /// **'УЧИТЬ'**
  String get learn;

  /// No description provided for @check.
  ///
  /// In ru, this message translates to:
  /// **'ПРОВЕРИТЬ'**
  String get check;

  /// No description provided for @fill_the_blank.
  ///
  /// In ru, this message translates to:
  /// **'ПОДСТАВЬТЕ ПРАВИЛЬНО БУКВУ'**
  String get fill_the_blank;

  /// No description provided for @got_it.
  ///
  /// In ru, this message translates to:
  /// **'ПОНЯТНО'**
  String get got_it;

  /// No description provided for @dictionary.
  ///
  /// In ru, this message translates to:
  /// **'СЛОВАРЬ'**
  String get dictionary;

  /// No description provided for @words.
  ///
  /// In ru, this message translates to:
  /// **'слов'**
  String get words;

  /// No description provided for @connection_is_lost.
  ///
  /// In ru, this message translates to:
  /// **'СОЕДИНЕНИЕ ПОТЕРЯНО'**
  String get connection_is_lost;

  /// No description provided for @check_your_network.
  ///
  /// In ru, this message translates to:
  /// **'Проверьте вашу сеть и перезагрузите страницу'**
  String get check_your_network;

  /// No description provided for @reload.
  ///
  /// In ru, this message translates to:
  /// **'Перезагрузить'**
  String get reload;

  /// No description provided for @learn_session.
  ///
  /// In ru, this message translates to:
  /// **'Учебное занятие'**
  String get learn_session;

  /// No description provided for @example_help_main_text.
  ///
  /// In ru, this message translates to:
  /// **'Во время обучения вам необходимо выучить слова, которые были даны. Эти слова относятся к одной коллекции. После того, как вы их выучите, вам будет предложено проверить свою внимательность, вам нужно будет вставить пропущенную букву в каждом слове. Полный процесс сеанса:'**
  String get example_help_main_text;

  /// No description provided for @example_help_first_sub_text.
  ///
  /// In ru, this message translates to:
  /// **'1. Выучить слово'**
  String get example_help_first_sub_text;

  /// No description provided for @example_help_second_sub_text.
  ///
  /// In ru, this message translates to:
  /// **'2. Выучить пример его использования в предложениях'**
  String get example_help_second_sub_text;

  /// No description provided for @example_help_third_sub_text.
  ///
  /// In ru, this message translates to:
  /// **'3. Вставить пропущенную букву в слове'**
  String get example_help_third_sub_text;

  /// No description provided for @just_follow.
  ///
  /// In ru, this message translates to:
  /// **'Просто следуйте этому процессу!'**
  String get just_follow;

  /// No description provided for @book_example_one_sentences.
  ///
  /// In ru, this message translates to:
  /// **'Предмет, который люди читают, чтобы получить знания'**
  String get book_example_one_sentences;

  /// No description provided for @book_example_two_sentences.
  ///
  /// In ru, this message translates to:
  /// **' {val}'**
  String book_example_two_sentences(Object val);

  /// No description provided for @wordsLearnedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Сегодня вы выучили {count} слов'**
  String wordsLearnedTitle(Object count);

  /// No description provided for @welcomeText.
  ///
  /// In ru, this message translates to:
  /// **'👋 Доброе утро,'**
  String get welcomeText;

  /// No description provided for @well_done_it_s_right.
  ///
  /// In ru, this message translates to:
  /// **'Молодец! Правильно!'**
  String get well_done_it_s_right;

  /// No description provided for @keep_going_green.
  ///
  /// In ru, this message translates to:
  /// **'Продолжай в том же духе!'**
  String get keep_going_green;

  /// No description provided for @that_s_a_mistake.
  ///
  /// In ru, this message translates to:
  /// **'Это ошибка'**
  String get that_s_a_mistake;

  /// No description provided for @try_again.
  ///
  /// In ru, this message translates to:
  /// **'Попробуй еще раз!'**
  String get try_again;

  /// No description provided for @practice.
  ///
  /// In ru, this message translates to:
  /// **'Практика'**
  String get practice;

  /// No description provided for @can_you_complete_with.
  ///
  /// In ru, this message translates to:
  /// **'Сможете ли вы завершить без ошибок?'**
  String get can_you_complete_with;

  /// No description provided for @want_to_exit.
  ///
  /// In ru, this message translates to:
  /// **'Хотите выйти?'**
  String get want_to_exit;

  /// No description provided for @your_progress_will_be_lost.
  ///
  /// In ru, this message translates to:
  /// **'Ваш прогресс будет потерян!'**
  String get your_progress_will_be_lost;

  /// No description provided for @keep_practicing_to_remember_more_words.
  ///
  /// In ru, this message translates to:
  /// **'Продолжайте практиковаться, чтобы запомнить больше слов'**
  String get keep_practicing_to_remember_more_words;

  /// No description provided for @you_ve_got_of.
  ///
  /// In ru, this message translates to:
  /// **'У вас {count} из {num}'**
  String you_ve_got_of(Object count, Object num);

  /// No description provided for @practice_session.
  ///
  /// In ru, this message translates to:
  /// **'Практическая сессия'**
  String get practice_session;

  /// No description provided for @examples_of_use.
  ///
  /// In ru, this message translates to:
  /// **'Примеры'**
  String get examples_of_use;

  /// No description provided for @help.
  ///
  /// In ru, this message translates to:
  /// **'Помощь'**
  String get help;

  /// No description provided for @wardrobe.
  ///
  /// In ru, this message translates to:
  /// **'гардероб'**
  String get wardrobe;

  /// No description provided for @color.
  ///
  /// In ru, this message translates to:
  /// **'Цвет'**
  String get color;

  /// No description provided for @color_blue.
  ///
  /// In ru, this message translates to:
  /// **'Синий'**
  String get color_blue;

  /// No description provided for @color_red.
  ///
  /// In ru, this message translates to:
  /// **'Красный'**
  String get color_red;

  /// No description provided for @color_purple.
  ///
  /// In ru, this message translates to:
  /// **'Фиолетовый'**
  String get color_purple;

  /// No description provided for @color_yellow.
  ///
  /// In ru, this message translates to:
  /// **'Жёлтый'**
  String get color_yellow;

  /// No description provided for @cap.
  ///
  /// In ru, this message translates to:
  /// **'Шапка'**
  String get cap;

  /// No description provided for @none.
  ///
  /// In ru, this message translates to:
  /// **'Нет'**
  String get none;

  /// No description provided for @scarf.
  ///
  /// In ru, this message translates to:
  /// **'Шарф'**
  String get scarf;

  /// No description provided for @hat.
  ///
  /// In ru, this message translates to:
  /// **'Шляпа'**
  String get hat;

  /// No description provided for @clothes.
  ///
  /// In ru, this message translates to:
  /// **'Одежда'**
  String get clothes;

  /// No description provided for @no_clothes.
  ///
  /// In ru, this message translates to:
  /// **'Без одежды'**
  String get no_clothes;

  /// No description provided for @cloak.
  ///
  /// In ru, this message translates to:
  /// **'Плащ'**
  String get cloak;

  /// No description provided for @shirt.
  ///
  /// In ru, this message translates to:
  /// **'Футболка'**
  String get shirt;

  /// No description provided for @hoodie.
  ///
  /// In ru, this message translates to:
  /// **'Худи'**
  String get hoodie;

  /// No description provided for @eyes.
  ///
  /// In ru, this message translates to:
  /// **'Глаза'**
  String get eyes;

  /// No description provided for @eyes_default.
  ///
  /// In ru, this message translates to:
  /// **'по умолчанию'**
  String get eyes_default;

  /// No description provided for @eyes_wink.
  ///
  /// In ru, this message translates to:
  /// **'подмигивание'**
  String get eyes_wink;

  /// No description provided for @eyes_angry.
  ///
  /// In ru, this message translates to:
  /// **'сердитый'**
  String get eyes_angry;

  /// No description provided for @eyes_cute.
  ///
  /// In ru, this message translates to:
  /// **'милый'**
  String get eyes_cute;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'kk': return AppLocalizationsKk();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

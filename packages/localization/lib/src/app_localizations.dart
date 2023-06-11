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

  /// No description provided for @collections.
  ///
  /// In ru, this message translates to:
  /// **'КОЛЛЕКЦИИ'**
  String get collections;

  /// No description provided for @learned.
  ///
  /// In ru, this message translates to:
  /// **'ИЗУЧЕНО'**
  String get learned;
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

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
  String get continueWithEmail => 'Продолжить с Email';

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
  String get dictionary => 'СЛОВАРЬ';

  @override
  String get words => 'слов';

  @override
  String get connection_is_lost => 'СОЕДИНЕНИЕ ПОТЕРЯНО';

  @override
  String get check_your_network => 'Проверьте вашу сеть и перезагрузите страницу';

  @override
  String get reload => 'Перезагрузить';

  @override
  String get collections => 'КОЛЛЕКЦИИ';

  @override
  String get learned => 'ИЗУЧЕНО';

  @override
  String get learn_session => 'Учебное занятие';

  @override
  String get example_help_main_text => 'Во время обучения вам необходимо выучить слова, которые были даны. Эти слова относятся к одной коллекции. После того, как вы их выучите, вам будет предложено проверить свою внимательность, вам нужно будет вставить пропущенную букву в каждом слове. Полный процесс сеанса:';

  @override
  String get example_help_first_sub_text => '1. Выучить слово';

  @override
  String get example_help_second_sub_text => '2. Выучить пример его использования в предложениях';

  @override
  String get example_help_third_sub_text => '3. Вставить пропущенную букву в слове';

  @override
  String get just_follow => 'Просто следуйте этому процессу!';

  @override
  String get book_example_one_sentences => 'Предмет, который люди читают, чтобы получить знания';

  @override
  String book_example_two_sentences(Object val) {
    return ' $val';
  }

  @override
  String wordsLearnedTitle(Object count) {
    return 'Сегодня вы выучили $count слов';
  }

  @override
  String get welcomeText => '👋 Доброе утро,';

  @override
  String get well_done_it_s_right => 'Молодец! Правильно!';

  @override
  String get keep_going_green => 'Продолжай в том же духе!';

  @override
  String get that_s_a_mistake => 'Это ошибка';

  @override
  String get try_again => 'Попробуй еще раз!';

  @override
  String get practice => 'Практика';

  @override
  String get can_you_complete_with => 'Сможете ли вы завершить без ошибок?';

  @override
  String get want_to_exit => 'Хотите выйти?';

  @override
  String get your_progress_will_be_lost => 'Ваш прогресс будет потерян!';

  @override
  String get keep_practicing_to_remember_more_words => 'Продолжайте практиковаться, чтобы запомнить больше слов';

  @override
  String you_ve_got_of(Object count, Object num) {
    return 'У вас $count из $num';
  }

  @override
  String get practice_session => 'Практическая сессия';

  @override
  String get examples_of_use => 'Примеры';

  @override
  String get help => 'Помощь';

  @override
  String get yes => 'да';

  @override
  String get no => 'нет';

  @override
  String get finish => 'закончить';

  @override
  String get wardrobe => 'гардероб';

  @override
  String get color => 'Цвет';

  @override
  String get color_blue => 'Синий';

  @override
  String get color_red => 'Красный';

  @override
  String get color_purple => 'Фиолетовый';

  @override
  String get color_yellow => 'Жёлтый';

  @override
  String get cap => 'Шапка';

  @override
  String get none => 'Нет';

  @override
  String get scarf => 'Шарф';

  @override
  String get hat => 'Шляпа';

  @override
  String get clothes => 'Одежда';

  @override
  String get no_clothes => 'Без одежды';

  @override
  String get cloak => 'Плащ';

  @override
  String get shirt => 'Футболка';

  @override
  String get hoodie => 'Худи';

  @override
  String get eyes => 'Глаза';

  @override
  String get eyes_default => 'по умолчанию';

  @override
  String get eyes_wink => 'подмигивание';

  @override
  String get eyes_angry => 'сердитый';

  @override
  String get eyes_cute => 'милый';

  @override
  String get choose_the_image_that_describe_the_word => 'Выберите изображение, которое описывает это слово';
}

import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/practice/presentation/practice_choose_word_page.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/services/app_tts.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../../src/ui/presentation/pages/help_page/help_page.dart';
import 'package:localization/localization.dart';

class PracticeQuizePage extends StatefulWidget {
  const PracticeQuizePage({Key? key}) : super(key: key);

  @override
  _PracticeQuizePageState createState() => _PracticeQuizePageState();
}

class _PracticeQuizePageState extends State<PracticeQuizePage> {
  bool isQuizButtonSelected = false;
  String selectedQuizButton = '';
  final tts = getIt.get<AppTTS>();

  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: BaseAppBar(
        title: localization.practice,
        onLeadingTapExit: () => Navigator.of(context).pop(),
        onLeadingTapHelp: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HelpPage(),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 48,
          ),
          Image.asset(UiKitAssets.icons.book.keyName),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(

                  'An item that people read',
                  style: lessonPropolsolTextStyle,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              SoundButton(onPressedCallback: () => tts.speak(localization.book)),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 2.0,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QuizButton(
                    widgetTools: Text(
                      'book',
                      style: selectedQuizButton == 'book'
                          ? buttonTextTextStyle
                          : lessonPropolsolTextStyle,
                    ),
                    onPressed: () => setState(
                        () => selectedQuizButton = selectedQuizButton == 'book' ? '' : 'book'),
                    isSelected: selectedQuizButton == 'book',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QuizButton(
                    widgetTools: Text(
                      'car',
                      style: selectedQuizButton == 'car'
                          ? buttonTextTextStyle
                          : lessonPropolsolTextStyle,
                    ),
                    onPressed: () => setState(
                        () => selectedQuizButton = selectedQuizButton == 'car' ? '' : 'car'),
                    isSelected: selectedQuizButton == 'car',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QuizButton(
                    widgetTools: Text(
                      'laptop',
                      style: selectedQuizButton == 'laptop'
                          ? buttonTextTextStyle
                          : lessonPropolsolTextStyle,
                    ),
                    onPressed: () => setState(
                        () => selectedQuizButton = selectedQuizButton == 'laptop' ? '' : 'laptop'),
                    isSelected: selectedQuizButton == 'laptop',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QuizButton(
                    widgetTools: Text(
                      'notebook',
                      style: selectedQuizButton == 'notebook'
                          ? buttonTextTextStyle
                          : lessonPropolsolTextStyle,
                    ),
                    onPressed: () => setState(() =>
                        selectedQuizButton = selectedQuizButton == 'notebook' ? '' : 'notebook'),
                    isSelected: selectedQuizButton == 'notebook',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            color: AppColors.border,
          ),
          CheckButton(
            title: localization.check,
            color: selectedQuizButton.isEmpty? AppColors.border: AppColors.checkButtonColor,
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PracticeChooseWord(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

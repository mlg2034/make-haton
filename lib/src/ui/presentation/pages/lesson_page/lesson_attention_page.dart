import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:ui_kit/ui_kit.dart';

class LessonAttetionPage extends StatefulWidget {
  const LessonAttetionPage({super.key});

  @override
  State<LessonAttetionPage> createState() => _LessonAttetionPageState();
}

class _LessonAttetionPageState extends State<LessonAttetionPage> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: LearnAppBar(
          title: localization.lesson,
          onLeadingTapExit: () {
            Navigator.of(context).pop();
          },
          onLeadingTapHelp: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HelpPage()));
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            Image.asset(UiKitAssets.icons.book.keyName),
            const SizedBox(
              height: 60,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'B O',
                style: lessonCategoryTextStyle,
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                width: 31,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.border,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                'K',
                style: lessonCategoryTextStyle,
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Fill the blank letter',
              style: lessonPropolsolTextStyle,
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectLettersButton(
                  letter: 'A',
                ),
                SizedBox(
                  width: 16,
                ),
                SelectLettersButton(letter: 'O'),
                SizedBox(
                  width: 16,
                ),
                SelectLettersButton(letter: 'C'),
                SizedBox(
                  width: 16,
                ),
                SelectLettersButton(
                  letter: 'V',
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return AnswerBottomSheets(
                      backgroundColor: AppColors.checkButtonColor,
                      mainText: 'WEEL DONE , IT IS RIGHT',
                      subText: 'Keep going green!',
                    );
                  },
                );
              },
              child: ContinueButton(
                color: AppColors.checkButtonColor,
                title: 'CHECK',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

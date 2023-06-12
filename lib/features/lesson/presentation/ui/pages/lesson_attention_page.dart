import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/practice/presentation/practice_finish_page.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/shared/routes.dart';
import 'package:make_haton/src/ui/blocs/navigator_bloc/navigation_service.dart';
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
    final manager = getIt.get<NavigatorManager>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: BaseAppBar(
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
            Text(
              localization.fill_the_blank,
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
                      mainText: localization.well_done_it_s_right,
                      subText: localization.keep_going_green,
                      onPressed: () {
                        // manager.pushNamed(Routes.pr)
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PracticeFinishPage()));
                      },
                    );
                  },
                );
              },
              child: CheckButton(
                color: AppColors.checkButtonColor,
                title: localization.check,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PracticeFinishPage()));

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

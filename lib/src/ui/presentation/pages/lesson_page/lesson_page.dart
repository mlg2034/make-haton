import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:make_haton/src/ui/presentation/pages/lesson_page/lesson_attention_page.dart';
import 'package:make_haton/src/ui/presentation/pages/lesson_page/lesson_example.dart';
import 'package:ui_kit/ui_kit.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: LearnAppBar(
          title: localization.lesson,
          onLeadingTapExit: () => Navigator.of(context).pop(),
          onLeadingTapHelp: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HelpPage(),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(UiKitAssets.icons.book.keyName),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 76,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.primary,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 18,
                  child: SvgPicture.asset(
                    UiKitAssets.icons.sound.keyName,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              localization.book,
              style: lessonCategoryTextStyle,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColors.border),
                borderRadius: BorderRadius.circular(14),
              ),
              width: 332,
              height: 65,
              child: const SizedBox(
                height: 40,
                width: 268,
                child: Center(
                  child: Text(
                    'An item that people read to gain knowledge',
                    style: lessonPropolsolTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'THE',
                  style: learnWordsTextStyle,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  localization.book,
                  style: categoryTextStyle,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'IS ON THE TABLE',
                  style: learnWordsTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => LessonExample()));
                },
                child: ContinueButton(
                  color: AppColors.learnButtonColor,
                  title: 'LEARN',
                )),
          ],
        ),
      ),
    );
  }
}

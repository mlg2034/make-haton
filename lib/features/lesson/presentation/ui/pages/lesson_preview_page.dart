import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/lesson/presentation/ui/pages/lesson_page.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:lottie/lottie.dart';

class LessonPreviewPage extends StatefulWidget {
  const LessonPreviewPage({super.key});

  @override
  State<LessonPreviewPage> createState() => _LessonPreviewPageState();
}

class _LessonPreviewPageState extends State<LessonPreviewPage> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: AppBar(
        title: BaseAppBar(
          title: localization.lesson,
          onLeadingTapExit: () => Navigator.of(context).pop(),
          // onLeadingTapHelp: () => Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => const HelpPage(),
          //   ),
          // ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 116,
            ),
            Center(
              child: Lottie.asset(
                UiKitAssets.lottie.robot.keyName,
              ),
            ),
            const Text(
              'LEARN THE WORDS FROM',
              style: learnWordsTextStyle,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TRANSPORT',
                  style: categoryTextStyle,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'CATEGORY',
                  style: learnWordsTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LessonPage(),
                  ),
                );
              },
              child: Container(
                width: 332,
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 148, 255, 1),
                      Color.fromRGBO(0, 194, 255, 1),
                      Color.fromRGBO(0, 194, 255, 1),
                    ],
                  ),
                ),
                child: const Text(
                  'START',
                  style: buttonTextTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

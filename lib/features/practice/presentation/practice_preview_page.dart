import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/lesson/presentation/ui/pages/lesson_page.dart';
import 'package:make_haton/features/practice/presentation/practice_quize_page.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:lottie/lottie.dart';

class PracticePreviewPage extends StatefulWidget {
  const PracticePreviewPage({super.key});

  @override
  State<PracticePreviewPage> createState() => _PracticePreviewPageState();
}

class _PracticePreviewPageState extends State<PracticePreviewPage> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: BaseAppBar(
        title: 'Practice',
        onLeadingTapExit: () => Navigator.of(context).pop(),
        onLeadingTapHelp: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HelpPage(),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 116,
          ),
          Lottie.asset(
            UiKitAssets.lottie.robot.keyName,
          ),
          const Text(
            'Can you complete',
            style: learnWordsTextStyle,
          ),
          Text(
            ' with no mistakes?',
            style: categoryTextStyle,
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
                  builder: (context) => const PracticeQuizePage(),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:lottie/lottie.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'HELP',
        onLeadingTap: () => Navigator.of(context).pop(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Learn Session',
                style: learnSession,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Center(child: Lottie.asset(UiKitAssets.lottie.help.keyName)),
            const SizedBox(
              height: 64,
            ),
            Flexible(
              child: Text(
                'During the Learn you have to learn words that are given. These words are from one collection. After learning them, your attention will be challenged, you will have to fill the blank Letter in each Word. The full process of the session:',
                style: lessonPropolsolTextStyle,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              '1. Learn a Word',
              style: helpTextTextSyle,
            ),
            Text(
              '2. Learn example of its use in sentences',
              style: helpTextTextSyle,
            ),
            Text(
              '3. Fill a blank Letter in a Word',
              style: helpTextTextSyle,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Just follow this process!',
              style: lessonPropolsolTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

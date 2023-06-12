import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:localization/localization.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: CustomAppBar(
        title: localization.help,
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
                localization.learn_session,
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
                localization.example_help_main_text,
                style: lessonPropolsolTextStyle,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
             Text(
               localization.example_help_first_sub_text,
              style: helpTextTextSyle,
            ),
             Text(
               localization.example_help_second_sub_text,
              style: helpTextTextSyle,
            ),
             Text(
              localization.example_help_third_sub_text,
              style: helpTextTextSyle,
            ),
            const SizedBox(
              height: 32,
            ),
             Text(
               localization.just_follow,
              style: lessonPropolsolTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

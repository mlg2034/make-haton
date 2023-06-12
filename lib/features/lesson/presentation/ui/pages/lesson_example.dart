import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/lesson/presentation/ui/pages/lesson_attention_page.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:ui_kit/ui_kit.dart';

class LessonExample extends StatelessWidget {
  const LessonExample({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: BaseAppBar(
          title: localization.lesson,
          onLeadingTapExit: () => Navigator.of(context).pop(),
          onLeadingTapHelp: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpPage())),
        ),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(UiKitAssets.icons.book.keyName),
          const SizedBox(
            height: 30,
          ),
          Text(
            localization.examples_of_use,
            style: lessonCategoryTextStyle,
          ),
          const SizedBox(
            height: 32,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('THE '),
              Text(
                'BOOK ',
                style: categoryTextStyle,
              ),
              Text(
                'IS ON THE TABLE',
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'I LIKE TO READ THIS ',
                style: lessonPropolsolTextStyle,
              ),
              Text(
                'BOOK',
                style: categoryTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 262,
            child: Flexible(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'THIS ',
                      style: lessonPropolsolTextStyle,
                    ),
                    TextSpan(
                      text: ' BOOK ',
                      style: categoryTextStyle,
                    ),
                    TextSpan(
                      text: 'IS SO OLD THAT NO ONE KNOWS WHO HAS WRITTEN IT',
                      style: lessonPropolsolTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const LessonAttetionPage()));
            },
            child: Container(
              alignment: Alignment.center,
              width: 332,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.learnButtonColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
              localization.got_it,
                style: buttonTextTextStyle,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

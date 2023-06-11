import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/features/practice/presentation/practice_choose_word_page.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../../src/ui/presentation/pages/help_page/help_page.dart';

class PracticeQuizePage extends StatefulWidget {
  const PracticeQuizePage({Key? key}) : super(key: key);

  @override
  _PracticeQuizePageState createState() => _PracticeQuizePageState();
}

class _PracticeQuizePageState extends State<PracticeQuizePage> {
  bool isQuizButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'An item that people read',
                  style: lessonPropolsolTextStyle,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              SoundButton(),
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
                QuizeButtons(
                    widgetTools: Text('book' ,style: lessonPropolsolTextStyle,),
                    onPressed: () =>
                        setState(() => isQuizButtonSelected = true)),
                QuizeButtons(
                    widgetTools: Text('book',style: lessonPropolsolTextStyle,),
                    onPressed: () =>
                        setState(() => isQuizButtonSelected = true)),
                QuizeButtons(
                    widgetTools: Text('Askhat',style: lessonPropolsolTextStyle),
                    onPressed: () =>
                        setState(() => isQuizButtonSelected = true)),
                QuizeButtons(
                    widgetTools: Text('red',style: lessonPropolsolTextStyle),
                    onPressed: () =>
                        setState(() => isQuizButtonSelected = true)),
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
            color: AppColors.border,
            title: 'Check',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PracticeChooseWord(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

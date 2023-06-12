import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/practice/presentation/practice_finish_page.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/services/app_tts.dart';
import 'package:ui_kit/ui_kit.dart';

class PracticeChooseIcon extends StatefulWidget {
  const PracticeChooseIcon({Key? key});

  @override
  State<PracticeChooseIcon> createState() => _PracticeChooseIconState();
}

class _PracticeChooseIconState extends State<PracticeChooseIcon> {
  String selectedIcon = '';

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: BaseAppBar(
        title: 'Practice',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          SoundButton(
            onPressedCallback:()=> getIt.get<AppTTS>().speak(context.locale.book),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            localizations.book,
            style: lessonCategoryTextStyle,
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(16),
                color: AppColors.white,
              ),
              child: Flexible(
                child: Center(
                  child: Text(
                    'An item that people read to gain knowledge',
                    style: lessonPropolsolTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIcon == 'han') {
                            selectedIcon = '';
                          } else {
                            selectedIcon = 'han';
                          }
                        });
                      },
                      child: Container(
                        height: 126,
                        width: 126,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedIcon == 'han'
                                  ? AppColors.title
                                  : AppColors.border,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: SvgPicture.asset(
                          UiKitAssets.images.han.keyName,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIcon == 'book') {
                            selectedIcon = '';
                          } else {
                            selectedIcon = 'book';
                          }
                        });
                      },
                      child: Container(
                        height: 126,
                        width: 126,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedIcon == 'book'
                                  ? AppColors.title
                                  : AppColors.border,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: SvgPicture.asset(
                          UiKitAssets.images.bike.keyName,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIcon == 'question_mark') {
                            selectedIcon = '';
                          } else {
                            selectedIcon = 'question_mark';
                          }
                        });
                      },
                      child: Container(
                        height: 126,
                        width: 126,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedIcon == 'question_mark'
                                  ? AppColors.title
                                  : AppColors.border,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(
                          UiKitAssets.icons.book.keyName,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIcon == 'coin') {
                            selectedIcon = '';
                          } else {
                            selectedIcon = 'coin';
                          }
                        });
                      },
                      child: Container(
                        height: 126,
                        width: 126,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedIcon == 'coin'
                                  ? AppColors.title
                                  : AppColors.border,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: SvgPicture.asset(
                          UiKitAssets.icons.coin.keyName,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Choose the image that describes the word',
            style: exampleLetterTextStyle,
          ),
          const Divider(
            color: AppColors.border,
          ),
          const SizedBox(
            height: 24,
          ),
          CheckButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PracticeFinishPage()));
            },
            color: selectedIcon.isNotEmpty
                ? AppColors.checkButtonColor
                : AppColors.border,
            title: 'CHECK',
          ),
        ],
      ),
    );
  }
}

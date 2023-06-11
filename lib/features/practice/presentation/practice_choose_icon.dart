import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/practice/presentation/practice_finish_page.dart';
import 'package:ui_kit/ui_kit.dart';

class PracticeChooseIcon extends StatefulWidget {
  const PracticeChooseIcon({Key? key});

  @override
  State<PracticeChooseIcon> createState() => _PracticeChooseIconState();
}

class _PracticeChooseIconState extends State<PracticeChooseIcon> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: BaseAppBar(
        title: 'Practice',
      ),
      body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            SoundButton(),
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
              child: AppOutlinedButton.rect(
                child: Flexible(
                  child: Center(
                    child: Text(
                      'An item tha people read to gain knowledge',
                      style: lessonPropolsolTextStyle,
                    ),
                  ),
                ),
                aspectRatio: 5,
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
                      child: AppOutlinedButton.square(
                        child: Image.asset(
                          UiKitAssets.icons.book.keyName,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppOutlinedButton.square(
                        child: Image.asset(
                          UiKitAssets.icons.book.keyName,
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
                      child: AppOutlinedButton.square(
                        child: Image.asset(
                          UiKitAssets.icons.book.keyName,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppOutlinedButton.square(
                        child: Image.asset(
                          UiKitAssets.icons.book.keyName,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28,),
            Text('Choose the image that describe the word' ,style: exampleLetterTextStyle,),
            const Divider(color: AppColors.border,),
            const SizedBox(height: 24,),
            CheckButton(onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PracticeFinishPage()));
              
            }, color: AppColors.border, title: 'CHECK',),

          ],
        ),
      
    );
  }
}

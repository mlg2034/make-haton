import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:lottie/lottie.dart';

class PracticeFinishPage extends StatefulWidget {
  const PracticeFinishPage({super.key});

  @override
  State<PracticeFinishPage> createState() => _PracticeFinishPageState();
}

class _PracticeFinishPageState extends State<PracticeFinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Practice',
                style: categoryTextStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 194,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 148, 255, 1),
                      Color.fromRGBO(0, 194, 255, 1),
                      Color.fromRGBO(0, 194, 255, 1),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(UiKitAssets.icons.coin.keyName),
              const SizedBox(
                width: 10,
              ),
              Text(
                '+1000',
                style: coinsTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Stack(
              children: [
                Lottie.asset(UiKitAssets.lottie.confetti.keyName),
                Center(
                  child: SizedBox(
                    height: 161,
                    width: 191,
                    child: Lottie.asset(
                      UiKitAssets.lottie.success.keyName,
                      repeat: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Flexible(
              child: Text(
                'Keep practicing to remember more words',
                style: categoryTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'YOU HAVE GOT ',
                  style: title,
                ),
                Text(
                  '5 ',
                  style: wordCountTextSyle,
                ),
                Text(
                  'OF 10',
                  style: title,
                ), 
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            color: AppColors.border,
          ),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder:(BuildContext context){
                return Container(
                  height: 188,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 28,),
                       Container(
                        width: 32,
                        height: 5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32) , color: AppColors.border),
                      ),
                      const SizedBox(height: 16,),
                     
                      Text('WANT TO EXIT?',style:settingsTextStyle ,),
                      const SizedBox(height: 6,),
                      Text('You progress will be lost!' ,style: subtitle,),
                      const SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 162,
                            child: ContinueButton(color: AppColors.checkButtonColor, title: 'NO')),
                            const SizedBox(width: 8,),
                          SizedBox(
                            width: 162,
                            child: CheckButton(onPressed: (){}, color: AppColors.white, title: 'YES'))
                        ],
                      )
                    ],
                  ),
                );
              });
            },
            child: ContinueButton(
              color: AppColors.primary,
              title: 'FINISH',
            ),
          ),
        ],
      ),
    );
  }
}

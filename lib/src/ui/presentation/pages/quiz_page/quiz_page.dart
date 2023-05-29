import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';



class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 53,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.border, width: 1),
                    color: AppColors.white,
                  ),
                  child: SvgPicture.asset(UiKitAssets.images.icCancel.keyName),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

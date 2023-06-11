import 'package:flutter/material.dart';

import '../../../ui_kit.dart';

class CheckButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String title;
  const CheckButton({
    required this.onPressed,
    required this.color,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return AnswerBottomSheets(
              onPressed: onPressed,
              backgroundColor: AppColors.checkButtonColor,
              mainText: 'WEEL DONE , IT IS RIGHT',
              subText: 'Keep going green!',
            );
          },
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: 332,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Text(
          title,
          style: lessonPropolsolTextStyle,
        ),
      ),
    );
  }
}

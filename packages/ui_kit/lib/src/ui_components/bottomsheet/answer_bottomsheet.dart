import 'package:flutter/material.dart';

import '../../../ui_kit.dart';

class AnswerBottomSheets extends StatelessWidget {
  final String mainText;
  final String subText;
  final Color backgroundColor;
  const AnswerBottomSheets({
    required this.backgroundColor,
    required this.mainText,
    required this.subText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 48),
      width: 428,
      height: 136,
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              children: [
                SizedBox(
                  width: 130,
                  child: Text(
                    mainText,
                    style: mainTextBottomSheetTextStyle,
                  ),
                ),
                SizedBox(
                  width: 121,
                  child: Text(
                    subText,
                    style: subTextBottomSheetTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 145,
            height: 88,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset('packages/ui_kit/assets/icons/ic_arrow_go.png'),
          ),
        ],
      ),
    );
  }
}

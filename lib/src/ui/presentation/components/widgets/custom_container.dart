import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget iconWidget;
  const CustomContainer({
    required this.iconWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.w,
      height: 64.h,
      decoration: BoxDecoration(
          border: Border.all(color: ColorsEnum.BORDER_COLOR),
          borderRadius: BorderRadius.circular(16),
          color: ColorsEnum.WHITE_COLOR),
          child: iconWidget,
   
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/src/ui/presentation/style/colors.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  width: 53.w,
                  height: 53.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: ColorsEnum.BORDER_COLOR,
                      width: 1
                    ),
                    color: ColorsEnum.WHITE_COLOR
                  ),
                  child: SvgPicture.asset('assets/images/cancel'))
            ],
          )
        ],
      ),
    );
  }
}

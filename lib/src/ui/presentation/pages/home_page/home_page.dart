import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/src/ui/presentation/components/widgets/custom_container.dart';
import 'package:make_haton/src/ui/presentation/style/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 100, right: 68),
            child: CustomContainer(
              iconWidget: SvgPicture.asset(
                'assets/images/ic_settings.svg',
                width: 24,
                height: 25,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            height: 89.h,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
            child: Container(
              width: double.infinity,
              height: 69.h,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorsEnum.BORDER_COLOR),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/ic_collections.svg') , 
                    SizedBox(width: 24,),
                    Text('Collections')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

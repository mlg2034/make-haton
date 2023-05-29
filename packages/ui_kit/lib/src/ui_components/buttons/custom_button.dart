import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;


  const CustomButton({
    super.key,
    required this.child,
    required this.onPressed,
  }) ;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          minimumSize: const Size(332, 55),

        ),


        child: child,
    );
  }
}



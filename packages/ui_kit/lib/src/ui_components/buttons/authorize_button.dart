import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';
import 'package:ui_kit/ui_kit.dart';

class Auth_button extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final String text;


  const Auth_button({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            child: icon,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              text,
              style: continueWithGoogleTextStyle,
            ),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}

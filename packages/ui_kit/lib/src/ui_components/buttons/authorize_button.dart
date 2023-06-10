import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final String text;


  const AuthButton({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            child: icon,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              text,
              style: buttonClassic,
            ),
          ),
        ],
      ),
    );
  }
}

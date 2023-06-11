import 'package:flutter/material.dart';

import '../../../ui_kit.dart';

class ContinueButton extends StatelessWidget {
  final Color color;
  final String title;
  const ContinueButton({
    required this.color,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 332,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Text(
        title,
        style: buttonTextTextStyle,
      ),
    );
  }
}

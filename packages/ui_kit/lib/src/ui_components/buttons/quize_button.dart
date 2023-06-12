import 'package:flutter/material.dart';

import '../../../ui_kit.dart';

class QuizButton extends StatelessWidget {
  final Widget widgetTools;
  final VoidCallback onPressed;
  final bool isSelected;

  const QuizButton({
    required this.widgetTools,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: isSelected ? AppColors.title : AppColors.border,
        onPrimary: isSelected ? AppColors.border : AppColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: isSelected ? AppColors.border : AppColors.border,
          ),
        ),
      ),
      child: widgetTools,
    );
  }
}


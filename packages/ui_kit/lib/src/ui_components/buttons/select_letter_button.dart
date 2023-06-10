import 'package:flutter/material.dart';
import '../../../ui_kit.dart';

class SelectLettersButton extends StatefulWidget {
  final String letter;

  const SelectLettersButton({
    required this.letter,
    Key? key,
  }) : super(key: key);

  @override
  _SelectLettersButtonState createState() => _SelectLettersButtonState();
}

class _SelectLettersButtonState extends State<SelectLettersButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 71,
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? AppColors.learnButtonColor : Colors.transparent,
          border: isSelected ? null : Border.all(color: AppColors.border),
        ),
        child: Center(
          child: Text(
            widget.letter,
            style: isSelected ? selectedLetterTextStyle : lessonCategoryTextStyle,
          ),
        ),
      ),
    );
  }
}

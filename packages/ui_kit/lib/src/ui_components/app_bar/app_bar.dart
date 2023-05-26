import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onLeadingTap;
  const CustomAppBar({Key? key, required this.title, this.onLeadingTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: onLeadingTap,
              child: const AppDecoratedBox(
                iconWidget: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: settingsTextStyle,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

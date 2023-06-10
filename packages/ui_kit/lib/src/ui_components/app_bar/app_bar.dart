import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onLeadingTap;
  final Widget? trailing;

  const CustomAppBar({Key? key, this.title, this.onLeadingTap, this.trailing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trailing = this.trailing;
    final title = this.title;

    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          onLeadingTap != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: GestureDetector(
                    onTap: onLeadingTap,
                    child: const AppOutlinedButton.square(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                )
              : const Spacer(
                  flex: 6,
                ),
          const Spacer(
            flex: 4,
          ),
          if (title != null)
            Center(
              child: Text(
                title,
                style: settingsTextStyle,
              ),
            ),
          const Spacer(
            flex: 6,
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

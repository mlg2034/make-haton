import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      padding: const EdgeInsets.only(left: 48, right: 48, top: 80, bottom: 48),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          onLeadingTap != null
              ? GestureDetector(
                  onTap: onLeadingTap,
                  child: AppOutlinedButton.square(
                    child: Center(
                      child: SvgPicture.asset(
                        UiKitAssets.icons.icArrowBack.keyName,
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
            Text(
              title.toUpperCase(),
              style: settingsTextStyle,
            ),
          const Spacer(
            flex: 4,
          ),
          const SizedBox(
            width: 64,
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 150);
}

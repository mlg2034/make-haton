import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class DictionaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final int? wordsCount;
  final String? subtitle;

  final VoidCallback? onLeadingTapExit;

  const DictionaryAppBar({
    this.onLeadingTapExit,
    this.title,
    this.wordsCount,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;

    return Stack(
      children: <Widget>[
        Center(
          child: Column(
            children: [
              if (title != null)
                Text(
                  title,
                  style: learnTitleTextStyle,
                ),
              RichText(
                text: TextSpan(
                  text: '$wordsCount ',
                  style: info.copyWith(color: AppColors.primary),
                  children: [
                    TextSpan(
                      text: subtitle,
                      style: info.copyWith(color: AppColors.title),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        AppOutlinedButton.square(
          onPressed: onLeadingTapExit,
          child: Container(
            alignment: Alignment.center,
            height: 16,
            width: 16,
            child: SvgPicture.asset(UiKitAssets.icons.icArrowBack.keyName),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

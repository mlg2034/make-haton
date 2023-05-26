import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ui_kit/ui_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.only(top: 100, right: 16),
              child: AppDecoratedBox(
                iconWidget: SvgPicture.asset(
                  'assets/images/ic_settings.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

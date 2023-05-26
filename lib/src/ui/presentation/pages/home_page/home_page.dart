import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/src/ui/presentation/pages/settings/settings_page.dart';

import 'package:ui_kit/ui_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        trailing: SquareButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const SettingsPage())),
          child: SvgPicture.asset(
            'assets/images/ic_settings.svg',
            fit: BoxFit.none,
          ),
        ),
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(
            //         right: 16,
            //       ),
            //       child: AppDecoratedBox(
            //         iconWidget: SvgPicture.asset(
            //           'assets/images/ic_settings.svg',
            //           fit: BoxFit.scaleDown,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

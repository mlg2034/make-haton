import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/src/ui/presentation/pages/settings_page/settings_page.dart';

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
            UiKitAssets.icons.icSettings.keyName,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareButton(
                    sizeFactor: 2.5,
                    child: SvgPicture.asset(
                      UiKitAssets.icons.trencher.keyName,
                    ),
                  ),
                  const SizedBox(width: 8,),
                  SquareButton(
                    sizeFactor: 2.5,
                    child: SvgPicture.asset(
                      UiKitAssets.icons.books.keyName,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_haton/src/ui/presentation/pages/character_page/character_page.dart';
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
            UiKitAssets.images.icSettings.keyName,
          ),
        ),
      ),
       body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CharacterPage()));
            }, child: Text('character'))
          ],
        ),
      ),
    );
  }
}

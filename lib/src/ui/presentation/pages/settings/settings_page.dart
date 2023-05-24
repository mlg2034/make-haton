import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:make_haton/src/ui/presentation/style/colors.dart';

import '../../components/widgets/custom_container.dart';
import '../../components/widgets/custom_row_settings_widget.dart';
import '../../style/text_styles.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 62, left: 48, right: 48),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: const CustomContainer(
                    iconWidget: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 27,
                      color: ColorsEnum.BLACK_COLOR,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Text(
                  'SETTINGS',
                  style: settingsTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomSettingsRowWidget(
            settingText: 'Dark theme',
          ),
          const Divider(),
          CustomSettingsRowWidget(
            settingText: 'Sounds',
          ),
          Divider(),
          CustomSettingsRowWidget(
            settingText: 'Notifications',
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 27.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lanquage',
                  style: dartThemeTextStyle,
                ),
                Text('English' ,style: languageTextStyle,)
              ],
            ),
          ),
          Divider(),
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 48, vertical: 24) ,
            alignment: Alignment.topLeft,
            child: Text('Pivacy Policy', style: settingsInfoTextStyle,)),
           Container(
            padding:const EdgeInsets.symmetric(horizontal: 48, vertical: 24) ,
            alignment: Alignment.topLeft,
            child: Text('Terms of Sevice', style: settingsInfoTextStyle,)),
        ],
      ),
    );
  }
}

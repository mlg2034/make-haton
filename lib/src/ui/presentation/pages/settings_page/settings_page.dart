import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'SETTINGS'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 6,
          ),
          const Divider(),
          const SettingsTile(
            title: 'Dark theme',
          ),
          const Divider(),
          const SettingsTile(
            title: 'Sounds',
          ),
          const Divider(),
          const SettingsTile(
            title: 'Notifications',
          ),
          const Divider(),
          const SettingsTile(
            title: 'Language',
            customActionWidget: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'English',
                style: languageTextStyle,
              ),
            ),
          ),
          const Divider(),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              alignment: Alignment.topLeft,
              child: const Text(
                'Pivacy Policy',
                style: settingsInfoTextStyle,
              )),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              alignment: Alignment.topLeft,
              child: const Text(
                'Terms of Sevice',
                style: settingsInfoTextStyle,
              )),
        ],
      ),
    );
  }
}

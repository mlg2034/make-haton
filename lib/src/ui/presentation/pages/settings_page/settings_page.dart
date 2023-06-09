import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:ui_kit/ui_kit.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: CustomAppBar(title: localization.settings),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 6,
          ),
          const Divider(),
          SettingsTile(
            title: localization.dark_theme,
          ),
          const Divider(),
          SettingsTile(
            title: localization.dark_theme,
          ),
          const Divider(),
          SettingsTile(
            title: localization.notifications,
          ),
          const Divider(),
          SettingsTile(
            title: localization.language,
            customActionWidget: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  localization.selectedLanguage,
                  style: languageTextStyle,
                ),
              ),
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            alignment: Alignment.topLeft,
            child: Text(
              localization.privacy_policy,
              style: settingsInfoTextStyle,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            alignment: Alignment.topLeft,
            child: Text(
              localization.terms_of_service,
              style: settingsInfoTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

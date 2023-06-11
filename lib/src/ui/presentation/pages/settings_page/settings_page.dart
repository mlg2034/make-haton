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
      backgroundColor: Colors.white,
      appBar:
          CustomAppBar(title: localization.settings, onLeadingTap: () => Navigator.pop(context)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SettingsTile(
            title: localization.dark_theme,
          ),
          const Divider(
            color: AppColors.border,
          ),
          SettingsTile(
            title: localization.dark_theme,
          ),
          const Divider(
            color: AppColors.border,
          ),
          SettingsTile(
            title: localization.notifications,
          ),
          const Divider(
            color: AppColors.border,
          ),
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
          Padding(
            padding: const EdgeInsets.all(48),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    localization.privacy_policy,
                    style: settingsInfoTextStyle,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    localization.terms_of_service,
                    style: settingsInfoTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

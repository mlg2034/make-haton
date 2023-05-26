import 'package:flutter/widgets.dart';
import 'package:localization/localization.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this);
}

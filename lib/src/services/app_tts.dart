import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AppTTS {
  final FlutterTts tts;

  AppTTS(this.tts);

  void setLanguage(Locale language) {
    tts.setLanguage("${language.languageCode}-${language.countryCode}");
  }

  void speak(String text) {
    tts.speak(text);
  }
}
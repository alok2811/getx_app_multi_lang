import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends GetxController {
  static Locale _locale = const Locale('en', 'US');

  // Initialize the locale
  set currentLocale(Locale locale) {
    _locale = locale;
    update();
  }

  // Helper function to retrieve the current locale
  Locale get currentLocale => _locale;

  void changeLanguage(String lang) {
    Get.updateLocale(Locale(lang));
  }
}

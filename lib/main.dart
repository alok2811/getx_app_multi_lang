import 'package:app_multi_lang/lang/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'localization_service.dart';
import 'my_home_page.dart'; // Import the service

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Multilanguage App',
      translations: AppLanguage(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: MyHomePage(),
    );
  }
}

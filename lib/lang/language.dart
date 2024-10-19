import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello',
          'welcome': 'Welcome to our app @name',
        },
        'ar': {
          'hello': 'مرحبا',
          'welcome': 'مرحبًا بكم في تطبيقنا @name',
        },
        'es': {
          'hello': 'Hola',
          'welcome': 'Bienvenido a nuestra aplicación @name',
        },
      };
}

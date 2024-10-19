import 'package:app_multi_lang/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LocalizationService());
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'.tr), // No need for context
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              controller.changeLanguage(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'en',
                  child: Text('English'),
                ),
                PopupMenuItem<String>(
                  value: 'es',
                  child: Text('Spanish'),
                ),
                PopupMenuItem<String>(
                  value: 'ar',
                  child: Text('Arabic'),
                ),
              ];
            },
            icon: Icon(Icons.language),
          ),
        ],
      ),
      body: Center(
        child: Text(
            "${'welcome'.trParams({'name': 'Alok'})}"), // No need for context
      ),
    );
  }
}

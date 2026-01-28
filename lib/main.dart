import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/translations.dart';
import 'modules/home/home_view.dart';
import 'modules/home/home_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      locale: Locale('gu', 'IN'),
      fallbackLocale: Locale('en', 'US'),
      initialBinding: HomeBinding(),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

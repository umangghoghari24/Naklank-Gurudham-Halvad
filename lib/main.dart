import 'package:calender/utils/language_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'utils/translations.dart';
import 'modules/home/home_view.dart';
import 'modules/home/home_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      locale: LanguageService.getInitialLocale(),
      fallbackLocale: Locale('en', 'US'),
      initialBinding: HomeBinding(),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

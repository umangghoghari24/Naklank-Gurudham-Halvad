import 'package:calender/utils/language_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils/translations.dart';
import 'modules/home/home_view.dart';
import 'modules/home/home_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // standard mobile size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppTranslations(),
          locale: LanguageService.getInitialLocale(),
          fallbackLocale: const Locale('en', 'US'),
          initialBinding: HomeBinding(),
          home: HomeView(),
        );
      },
    );
  }
}

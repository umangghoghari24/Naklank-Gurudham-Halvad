import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../utils/language_service.dart';
import '../../utils/theme_service.dart';

class SettingsController extends GetxController {
  final _box = GetStorage();

  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();

    isDarkMode.value = _box.read('darkMode') ?? false;

    // 🔥 IMPORTANT FIX
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.changeThemeMode(
        isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      );
    });
  }

  void toggleDarkMode(bool value) {
    isDarkMode.value = value;
    ThemeService.saveTheme(value);
  }

  void changeLanguage(String code) {
    LanguageService.changeLanguage(code);
  }
}

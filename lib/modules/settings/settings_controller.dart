import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../utils/language_service.dart';
import '../../utils/theme_service.dart';
class SettingsController extends GetxController {
  final isDarkMode = ThemeService.isDarkMode.obs;

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = ThemeService.isDarkMode; // ONLY READ
  }

  void toggleDarkMode(bool value) {
    isDarkMode.value = value;
    ThemeService.setTheme(value); // 🔥 ONLY HERE
  }

  void changeLanguage(String code) {
    LanguageService.changeLanguage(code);
  }
}

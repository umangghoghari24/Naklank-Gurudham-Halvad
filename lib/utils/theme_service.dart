import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class ThemeService {
  static final _box = GetStorage();
  static const _key = 'darkMode';

  static ThemeMode get themeMode {
    final isDark = _box.read(_key) ?? false;
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  static void saveTheme(bool isDark) {
    _box.write(_key, isDark);
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}

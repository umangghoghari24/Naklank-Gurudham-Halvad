import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  static final _box = GetStorage();
  static const _key = 'isDarkMode';

  /// 🔹 Load theme at app start
  static Future<void> init() async {
    // nothing async now, but future-proof
    if (!_box.hasData(_key)) {
      _box.write(_key, false); // default light
    }
  }

  /// 🔹 Get current ThemeMode
  static ThemeMode get themeMode {
    final isDark = _box.read(_key) ?? false;
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  /// 🔹 Check if dark
  static bool get isDarkMode => _box.read(_key) ?? false;

  /// 🔹 Toggle theme
  static void toggleTheme() {
    final isDark = !(_box.read(_key) ?? false);
    _box.write(_key, isDark);
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  /// 🔹 Set theme explicitly
  static void setTheme(bool isDark) {
    _box.write(_key, isDark);
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }
}

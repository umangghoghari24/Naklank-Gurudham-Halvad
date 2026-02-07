import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageService {
  static final _box = GetStorage();
  static const _key = 'languageCode';

  /// 🔹 Init language at app start
  static Future<void> init() async {
    if (!_box.hasData(_key)) {
      _box.write(_key, 'en'); // default Gujarati
    }
  }

  /// 🔹 Get initial locale
  static Locale getInitialLocale() {
    final code = _box.read(_key) ?? 'en';

    switch (code) {
      case 'hi':
        return const Locale('hi', 'IN');
      case 'en':
        return const Locale('en', 'US');
      default:
        return const Locale('gu', 'IN');
    }
  }

  /// 🔹 Change language & store
  static void changeLanguage(String code) {
    _box.write(_key, code);

    switch (code) {
      case 'hi':
        Get.updateLocale(const Locale('hi', 'IN'));
        break;
      case 'en':
        Get.updateLocale(const Locale('en', 'US'));
        break;
      default:
        Get.updateLocale(const Locale('gu', 'IN'));
    }
  }

  /// 🔹 Current language code
  static String get currentCode => _box.read(_key) ?? 'en';
}

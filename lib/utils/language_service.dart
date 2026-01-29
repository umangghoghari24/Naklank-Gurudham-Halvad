import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class LanguageService {
  static final _box = GetStorage();
  static const _key = 'languageCode';

  static void changeLanguage(String code) {
    _box.write(_key, code);

    if (code == 'gu') {
      Get.updateLocale(const Locale('gu', 'IN'));
    } else if (code == 'hi') {
      Get.updateLocale(const Locale('hi', 'IN'));
    } else {
      Get.updateLocale(const Locale('en', 'US'));
    }
  }

  static Locale getInitialLocale() {
    final code = _box.read(_key) ?? 'gu'; // Default Gujarati

    if (code == 'hi') return const Locale('hi', 'IN');
    if (code == 'en') return const Locale('en', 'US');
    return const Locale('gu', 'IN');
  }
}

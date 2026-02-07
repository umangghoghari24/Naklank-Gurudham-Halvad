import 'package:get/get.dart';
import '../../utils/language_service.dart';
import '../../utils/theme_service.dart';
class SettingsController extends GetxController {
  final isDarkMode = ThemeService.isDarkMode.obs;
  final selectedLang = LanguageService.currentCode.obs;

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = ThemeService.isDarkMode;
  }

  void toggleDarkMode(bool value) {
    isDarkMode.value = value;
    ThemeService.setTheme(value);
  }

  void changeLanguage(String code) {
    selectedLang.value = code;
    LanguageService.changeLanguage(code);
  }
}

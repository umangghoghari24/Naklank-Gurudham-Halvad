import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_drawer.dart';
import 'settings_controller.dart';
import '../../widgets/my_regular_text.dart';
import '../../utils/styles.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: MyRegularText(
          label: 'settings'.tr,
          style: Styles.blackShade18_16W600,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // 🌙 Dark Mode
          Obx(() => SwitchListTile(
            title: MyRegularText(
              label: 'dark_mode'.tr,
              style: Styles.black16W400,
            ),
            value: controller.isDarkMode.value,
            onChanged: controller.toggleDarkMode,
          )),

          const Divider(),

          // 🌐 Language
          MyRegularText(
            label: 'language'.tr,
            style: Styles.blackShade18_16W600,
          ),
          const SizedBox(height: 8),
          _langTile('gu', 'ગુજરાતી'),
          _langTile('hi', 'हिंदी'),
          _langTile('en', 'English'),
        ],
      ),
    );
  }

  Widget _langTile(String code, String label) {
    return ListTile(
      title: MyRegularText(label: label),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        controller.changeLanguage(code);
      },
    );
  }
}

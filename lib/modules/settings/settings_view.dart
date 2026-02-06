import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/color_constants.dart';
import '../../utils/string.dart';
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
        backgroundColor: ColorConstant.orangeColor,
        title: MyRegularText(
          label: SC.settings.tr,
          style: Styles.blackShade18_16W600,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MyRegularText(
            label: SC.themeMode.tr,
            style: Styles.blackShade18_16W600,
          ),
          // SizedBox(height: 5.h),
          Obx(() => SwitchListTile(
            title: MyRegularText(
              label: SC.darkMode.tr,
              style: Styles.black16W400,
            ),
            value: controller.isDarkMode.value,
            onChanged: controller.toggleDarkMode,
          )),

          const Divider(),

          // Language
          MyRegularText(
            label: SC.language.tr,
            style: Styles.blackShade18_16W600,
          ),
           // SizedBox(height: 5.h),
          _langTile('gu', 'ગુજરાતી'),
          _langTile('hi', 'हिंदी'),
          _langTile('en', 'English'),

          const Divider(),

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

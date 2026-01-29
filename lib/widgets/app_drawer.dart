import 'package:calender/modules/bij/bij_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modules/aarti/aarti_binding.dart';
import '../modules/aarti/aarti_view.dart';
import '../modules/bij/bij_binding.dart';
import '../modules/satsang/satsang_binding.dart';
import '../modules/satsang/satsang_view.dart';
import '../modules/settings/settings_binding.dart';
import '../modules/settings/settings_view.dart';
import '../utils/assets_path.dart';
import '../utils/language_service.dart';
import '../widgets/my_regular_text.dart';
import '../utils/color_constants.dart';
import '../utils/styles.dart';
import '../modules/home/home_view.dart';
import 'app_icon_image.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // 🔝 Drawer Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: ColorConstant.orangeColor,
            ),
            child: Center(
              child: MyRegularText(
                label: 'app_name'.tr,
                style: Styles.white18W600,
                align: TextAlign.start,
              ),
            ),
          ),

          // 🏠 Home
          _drawerItem(
            imagePath: 'assets/images/temple_demo.jpg',
            title: 'home'.tr,
            onTap: () {
              Get.offAll(() => HomeView());
            },
          ),
          _drawerItem(
            imagePath: AssetsPath.iconAarti,
            title: 'aarti'.tr,
            onTap: () {
              Get.to(
                    () => AartiView(),
                binding: AartiBinding(),
              );
            },
          ),
          _drawerItem(
            imagePath: AssetsPath.iconBij,

            title: 'bij'.tr,
            onTap: () {
              Get.to(
                    () => BijView(),
                binding: BijBinding(),
              );
            },
          ),
          _drawerItem(
            imagePath: 'assets/images/temple_demo.jpg',
            title: 'satsang'.tr,
            onTap: () {
              Get.to(
                    () => SatsangView(),
                binding: SatsangBinding(),
              );
            },
          ),
          _drawerItem(
            imagePath: 'assets/images/temple_demo.jpg',
            title: 'bhajan'.tr,
            onTap: () {
              // Get.to(
                //     () => BijView(),
                // binding: BijBinding(),
              // );
            },
          ),
          _drawerItem(
            imagePath: 'assets/images/temple_demo.jpg',
            title: 'gallery'.tr,
            onTap: () {
              // Get.to(
              //     () => BijView(),
              // binding: BijBinding(),
              // );
            },
          ),
          _drawerItem(
            imagePath: 'assets/images/temple_demo.jpg',
            title: 'history'.tr,
            onTap: () {
              // Get.to(
              //     () => BijView(),
              // binding: BijBinding(),
              // );
            },
          ),
          // ⚙️ Settings menu
          _drawerItem(
            imagePath: 'assets/images/temple_demo.jpg',
            title: 'settings'.tr,
            onTap: () {
              Get.to(
                    () => SettingsView(),
                binding: SettingsBinding(),
              );
            },
          ),

        ],
      ),
    );
  }

  // Drawer normal item
  Widget _drawerItem({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(
          imagePath,
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
      ),
      title: MyRegularText(
        label: title,
        style: Styles.black16W400,
      ),
      onTap: onTap,
    );
  }


  // Language item
  Widget _langItem(String code, String label) {
    return ListTile(
      title: MyRegularText(label: label),
      onTap: () {
        LanguageService.changeLanguage(code);
        Get.back(); // close drawer
      },
    );
  }
}

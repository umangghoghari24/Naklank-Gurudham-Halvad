import 'package:calender/modules/abhishek/abhishek_view.dart';
import 'package:calender/modules/bij/bij_view.dart';
import 'package:calender/modules/donation/donation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../modules/aarti/aarti_binding.dart';
import '../modules/aarti/aarti_view.dart';
import '../modules/abhishek/abhishek_binding.dart';
import '../modules/bij/bij_binding.dart';
import '../modules/donation/donation_binding.dart';
import '../modules/gallery/gallery_binding.dart';
import '../modules/gallery/gallery_view.dart';
import '../modules/satsang/satsang_binding.dart';
import '../modules/satsang/satsang_view.dart';
import '../modules/settings/settings_binding.dart';
import '../modules/settings/settings_view.dart';
import '../utils/assets_path.dart';
import '../utils/language_service.dart';
import '../utils/string.dart';
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
      width: 290.w,
      child: ListView(
        padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorConstant.orangeColor,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: AppIconImage(
                      imagePath: AssetsPath.bannerTemple,
                      width: 140.w,
                      height: 70.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  MyRegularText(
                    label: SC.appName.tr,
                    style: Styles.white18W600,
                    align: TextAlign.start,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            _drawerItem(
              imagePath: AssetsPath.bannerTemple,
              title: SC.home.tr,
              onTap: () {
                Get.offAll(() => HomeView());
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconAarti,
              title: SC.aarti.tr,
              onTap: () {
                Get.to(
                      () => AartiView(),
                  binding: AartiBinding(),
                );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconBij,
              title: SC.bij.tr,
              onTap: () {
                Get.to(
                      () => BijView(),
                  binding: BijBinding(),
                );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.shivling,
              title: SC.abhishekDarshan.tr,
              onTap: () {
                Get.to(
                      () => AbhishekView(),
                  binding: AbhishekBinding(),
                );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconSantavni,
              title: SC.satsang.tr,
              onTap: () {
                Get.to(
                      () => SatsangView(),
                  binding: SatsangBinding(),
                );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconBhajan,
              title: SC.bhajan.tr,
              onTap: () {
                // Get.to(
                  //     () => BijView(),
                  // binding: BijBinding(),
                // );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconGallery,
              title: SC.gallery.tr,
              onTap: () {
                Get.to(
                    () => GalleryView(),
                binding: GalleryBinding(),
                );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconDonate,
              title: SC.donation.tr,
              onTap: () {
                Get.to(
                      () => DonationView(),
                  binding: DonationBinding(),
                );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconStore,
              title: SC.store.tr,
              onTap: () {
                // Get.to(
                //     () => BijView(),
                // binding: BijBinding(),
                // );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconHistory,
              title: SC.history.tr,
              onTap: () {
                // Get.to(
                //     () => BijView(),
                // binding: BijBinding(),
                // );
              },
            ),
            _drawerItem(
              imagePath: AssetsPath.iconSettings,
              title: SC.settings.tr,
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

  Widget _langItem(String code, String label) {
    return ListTile(
      title: MyRegularText(label: label),
      onTap: () {
        LanguageService.changeLanguage(code);
        Get.back();
      },
    );
  }
}

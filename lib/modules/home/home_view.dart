import 'package:calender/modules/abhishek/abhishek_view.dart';
import 'package:calender/modules/satsang/satsang_view.dart';
import 'package:calender/utils/color_constants.dart';
import 'package:calender/utils/styles.dart';
import 'package:calender/widgets/app_icon_image.dart';
import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../utils/assets_path.dart';
import '../../utils/language_service.dart';
import '../../utils/string.dart';
import '../../widgets/app_drawer.dart';
import '../abhishek/abhishek_binding.dart';
import '../bij/bij_binding.dart';
import '../bij/bij_view.dart';
import '../satsang/satsang_binding.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      // backgroundColor: ColorConstant.greenColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConstant.whiteColor),
        backgroundColor: ColorConstant.orangeColor,
        title: MyRegularText(
            label: SC.app_name.tr,
        style: Styles.white16W600,),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.language),
            onSelected: LanguageService.changeLanguage,
            itemBuilder: (_) =>  [
              PopupMenuItem(value: 'gu', child: MyRegularText(label: 'ગુજરાતી')),
              PopupMenuItem(value: 'hi', child: MyRegularText(label: 'हिंदी')),
              PopupMenuItem(value: 'en', child: MyRegularText(label: 'English')),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // IMAGE NON-SCROLL
            _topBanner(),
            SizedBox(height: 16.h),

            // ONLY CARDS SCROLL
            Expanded(
              child: ListView(
                children: [
                  _menu(AssetsPath.iconAarti, SC.aarti.tr, () {
                    Get.toNamed(AppRoutes.aarti);
                    // Get.to(() => AartiView(), binding: AartiBinding());
                  }),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.iconBij, SC.bij.tr, () {
                    Get.to(() => BijView(), binding: BijBinding());
                  }),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.shivling, SC.abhishek_darshan.tr, () {
                    Get.to(() => AbhishekView(), binding: AbhishekBinding());
                  }),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.iconBhajan, SC.satsang.tr, () {
                    Get.to(() => SatsangView(), binding: SatsangBinding());
                  }),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.iconBhajan, SC.bhajan.tr, () {}),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.iconGallery, SC.gallery.tr, () {
                    Get.toNamed(AppRoutes.gallery);
                  }),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.iconGallery, 'Donation', () {
                    Get.toNamed(AppRoutes.donation);
                  }),
                  _menu(AssetsPath.iconStore, SC.store.tr, () {}),
                  SizedBox(height: 5.h),
                  _menu(AssetsPath.iconHistory, SC.history.tr, () {}),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _menu(
      String imagePath,
      String title,
      VoidCallback onTap,
      ) {
    return Card(
      elevation: 3,
        shadowColor: ColorConstant.greyBorderColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11),
      ),
      child: ListTile(
        leading: ClipOval(
          child: AppIconImage(
            imagePath: imagePath,
            width: 32.w,
            height: 32.w,
            fit: BoxFit.cover,
          ),
        ),
        title: MyRegularText(
          label: title,
          align: TextAlign.start,
          style: Styles.black16W400,
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  Widget _topBanner() {
    return AppIconImage(
      imagePath: AssetsPath.bannerTemple,
      width: double.infinity,
      height: 180.h,
      fit: BoxFit.cover,
      borderRadius: BorderRadius.circular(16), // 🟩 rounded banner
    );
  }

}

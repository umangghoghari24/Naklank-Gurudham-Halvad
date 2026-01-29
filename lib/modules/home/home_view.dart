import 'package:calender/modules/satsang/satsang_view.dart';
import 'package:calender/utils/color_constants.dart';
import 'package:calender/utils/styles.dart';
import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/language_service.dart';
import '../aarti/aarti_binding.dart';
import '../aarti/aarti_view.dart';
import '../bij/bij_binding.dart';
import '../bij/bij_view.dart';
import '../satsang/satsang_binding.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        // backgroundColor: Colors.orange,
        title: MyRegularText(
            label: 'app_name'.tr,
        style: Styles.blackShade18_16W600,),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (value) {
              LanguageService.changeLanguage(value);
            },
            itemBuilder: (_) => const [
              PopupMenuItem(value: 'gu', child: MyRegularText(label: 'ગુજરાતી')),
              PopupMenuItem(value: 'hi', child: MyRegularText(label: 'हिंदी')),
              PopupMenuItem(value: 'en', child: MyRegularText(label: 'English')),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _menu(Icons.access_time, 'aarti'.tr, () {
              Get.to(() => AartiView(), binding: AartiBinding());
            }),
             SizedBox(height: 8.h),

            _menu(Icons.celebration, 'bij'.tr, () {
              Get.to(() => BijView(), binding: BijBinding());
            }),
             SizedBox(height: 8.h),

            _menu(Icons.play_circle_fill, 'satang'.tr, () {
              Get.to(() => SatsangView(), binding: SatsangBinding());
            }),
             SizedBox(height: 8.h),

            _menu(Icons.queue_music, 'bhajan'.tr, () {}),
             SizedBox(height: 8.h),

            _menu(Icons.photo_library, 'gallery'.tr ,() {}),
             SizedBox(height: 8.h),

            _menu(Icons.history, 'history'.tr,() {}),
          ],
        ),
      ),

    );
  }

  Widget _menu(IconData icon, String title, VoidCallback onTap) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(icon,
            color: ColorConstant.orangeColor, size: 30),
        title: MyRegularText(
          label: title,
          align: TextAlign.start,
          style:  Styles.black16W400
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

}

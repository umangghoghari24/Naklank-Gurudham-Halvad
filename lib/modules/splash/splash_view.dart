import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/assets_path.dart';
import '../../utils/string.dart';
import 'splash_controller.dart';
import '../../widgets/app_icon_image.dart';
import '../../widgets/my_regular_text.dart';
import '../../utils/styles.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIconImage(
              imagePath: AssetsPath.bannerTemple,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(20),
            ),
            const SizedBox(height: 20),
            MyRegularText(
              label: SC.appName.tr,
              style: Styles.blackShade18_16W600,
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

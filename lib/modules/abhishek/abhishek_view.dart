import 'package:calender/utils/assets_path.dart';
import 'package:calender/utils/color_constants.dart';
import 'package:calender/widgets/app_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/string.dart';
import '../../utils/styles.dart';
import '../../widgets/my_regular_text.dart';
import 'abhishek_controller.dart';
import 'jarna_painter.dart';

class AbhishekView extends StatelessWidget {
  AbhishekView({super.key});

  final controller = Get.put(AbhishekController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightGreyColorD,
      appBar: AppBar(
          backgroundColor: ColorConstant.orangeColor,
          title: MyRegularText(
            label: SC.abhishek_darshan.tr,
            style: Styles.white18_14W400,),
        actions: [
          Obx(() {
            return IconButton(
              icon: Icon(
                controller.isSoundOn.value
                    ? Icons.volume_up
                    : Icons.volume_off,
                color: Colors.white,
              ),
              onPressed: controller.toggleSound,
            );
          }),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 0,
                    child: AppIconImage(
                      imagePath: AssetsPath.shivling,
                      height: 280.h,
                      width: 350.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (controller.isAbhishekRunning.value) ...[
                    Positioned(
                      top: 0,
                      child: AppIconImage(
                        imagePath: AssetsPath.bannerTemple,
                        height: 150.h,
                        width: 150.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: 120.h,
                      child: AnimatedBuilder(
                        animation: controller.progress,
                        builder: (context, child) {
                          return CustomPaint(
                            size: const Size(60, 200),
                            painter: JarnaPainter(
                              progress: controller.progress.value,
                              isMilk: controller.selectedType.value ==
                                  AbhishekType.milk,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ],
              );
            }),
          ),
           SizedBox(height: 20.h),
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _typeButton(
                  title: SC.water.tr,
                  isSelected:
                  controller.selectedType.value == AbhishekType.water,
                  onTap: () =>
                      controller.selectType(AbhishekType.water),
                ),
                _typeButton(
                  title: SC.milk.tr,
                  isSelected:
                  controller.selectedType.value == AbhishekType.milk,
                  onTap: () =>
                      controller.selectType(AbhishekType.milk),
                ),
              ],
            );
          }),
          SizedBox(height: 25.h),
          Obx(() {
            return ElevatedButton(
              onPressed: controller.isAbhishekRunning.value
                  ? null
                  : controller.startAbhishek,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstant.greenColor,
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width / 3.5,
                    vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: MyRegularText(
                  label: controller.isAbhishekRunning.value
                      ? SC.abhishek_running.tr
                      : SC.start_abhishek.tr,
                  style: Styles.white16W600
              ),
            );
          }),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  Widget _typeButton({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width / 6, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorConstant.orangeColor
              : ColorConstant.greyDark,
          borderRadius: BorderRadius.circular(11),
          border: Border.all(
            color: ColorConstant.greenColor,
            width: 1.5
          ),
        ),
        child: MyRegularText(
          label: title,
        style: Styles.white16W400,),
      ),
    );
  }
}

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
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorConstant.whiteColor,
          size: 22.sp,
        ),
        backgroundColor: ColorConstant.orangeColor,
        title: MyRegularText(
          label: SC.settings.tr,
          style: Styles.white18W600,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          MyRegularText(
            label: SC.themeMode.tr,
            style: Styles.blackShade18_16W600,
          ),

          Obx(() => SwitchListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 4.w),

            title: MyRegularText(
              label: controller.isDarkMode.value
                  ? SC.darkMode.tr
                  : SC.lightMode.tr,
              style: Styles.black16W400,
            ),

            value: controller.isDarkMode.value,
            onChanged: controller.toggleDarkMode,

            activeColor: ColorConstant.orangeColor,
            thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                  (states) {
                if (states.contains(MaterialState.selected)) {
                  return  Icon(
                    Icons.light_mode,
                  );
                }
                return Icon(
                  Icons.dark_mode,
                  color: ColorConstant.grey,
                );
              },
            ),
          )),

          SizedBox(height: 10.h),
          Divider(),
          MyRegularText(
            label: SC.language.tr,
            style: Styles.blackShade18_16W600,
          ),

          SizedBox(height: 10.h),

          Obx(() => PopupMenuButton<String>(
            offset: Offset(0, 60.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            onSelected: (value) {
              controller.changeLanguage(value);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 14.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.language, size: 20.sp),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: MyRegularText(
                      label: controller.selectedLang.value == 'gu'
                          ? 'ગુજરાતી'
                          : controller.selectedLang.value == 'hi'
                          ? 'हिंदी'
                          : 'English',
                      style: Styles.black16W400,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_double_arrow_down_sharp,
                    size: 22.sp,
                  ),
                ],
              ),
            ),
            itemBuilder: (context) => [
              _popupItem(
                  'gu', 'ગુજરાતી', controller.selectedLang.value),
              _popupItem('hi', 'हिंदी', controller.selectedLang.value),
              _popupItem(
                  'en', 'English', controller.selectedLang.value),
            ],
          )),

          SizedBox(height: 10.h),
          Divider(),
        ],
      ),
    );
  }

  // ---------------- POPUP ITEM ----------------
  PopupMenuItem<String> _popupItem(
      String code,
      String langLabel,
      String selectedCode,
      ) {
    final bool isSelected = code == selectedCode;

    return PopupMenuItem<String>(
      value: code,
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
        color: isSelected
            ? ColorConstant.orangeColor.withOpacity(0.4)
            : Colors.transparent,
        child: Row(
          children: [
            Icon(Icons.language, size: 20.sp),
            SizedBox(width: 10.w),
            Expanded(
              child: MyRegularText(
                label: langLabel,
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: ColorConstant.orangeColor,
                size: 20.sp,
              ),
          ],
        ),
      ),
    );
  }
}

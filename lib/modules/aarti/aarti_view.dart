import 'package:calender/utils/styles.dart';
import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/color_constants.dart';
import '../../utils/string.dart';
import '../../widgets/app_drawer.dart';
import 'aarti_controller.dart';

class AartiView extends GetView<AartiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  AppDrawer(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: ColorConstant.whiteColor),
        backgroundColor: ColorConstant.orangeColor,
          title: MyRegularText(
              label: SC.aarti.tr,
          style: Styles.white18W600,)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...controller.aartiList.map((e) => Card(
              child: ListTile(
                leading: const Icon(Icons.watch_later),
                title: MyRegularText(label:  e['title']!,
                  align: TextAlign.start,
                  style: Styles.black16W400,),
                trailing: MyRegularText(label:  e['time']!),
                onTap: () {
                  controller.onAartiTap(e['id']!);
                },
              ),
            )),
             SizedBox(height: 15.h),
            Obx(() => controller.showAarti.value
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MyRegularText(
                      label: controller.aartiTitle.tr,
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorConstant.redColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                MyRegularText(
                  label: controller.ramdevAarti,
                  align: TextAlign.justify,
                ),
              ],
            ) : const SizedBox()),
          ],
        ),
      ),
    );
  }
}

import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/color_constants.dart';
import '../../utils/string.dart';
import '../../utils/styles.dart';
import '../../widgets/app_drawer.dart';
import 'bij_controller.dart';

class BijView extends GetView<BijController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConstant.whiteColor),
        backgroundColor: ColorConstant.orangeColor,
        title: MyRegularText(
            label: SC.bij.tr,
        style: Styles.white18W600,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyRegularText(
              label: SC.bijTitle.tr,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorConstant.redColor,
              ),
            ),
             SizedBox(height: 12.h),
            Expanded(
              child: ListView.builder(
                itemCount: controller.bijDates.length,
                itemBuilder: (context, index) {
                  final item = controller.bijDates[index];

                  return Card(
                    // color: ColorConstant.sendGreen,
                    elevation: 3,
                    shadowColor: ColorConstant.greyBorderColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: ListTile(
                      title: MyRegularText(
                          label:  item['date']!,
                      align: TextAlign.start,
                      style: Styles.black16W400,),
                      trailing: MyRegularText(
                        label: item['month']!,
                        style: Styles.black16W400,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

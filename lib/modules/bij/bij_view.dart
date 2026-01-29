import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/color_constants.dart';
import '../../utils/styles.dart';
import 'bij_controller.dart';

class BijView extends GetView<BijController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.green,
        title: MyRegularText(
            label: 'bij'.tr,
        style: Styles.black18_14W400,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyRegularText(
              label: 'bij_title'.tr,
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
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      title: MyRegularText(
                          label:  item['date']!,
                      align: TextAlign.start,
                      style: Styles.black16W400,),
                      trailing: Text(
                        item['month']!,
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

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
      // backgroundColor: ColorConstant.blueColor,
      drawer: const AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConstant.whiteColor),
        backgroundColor: ColorConstant.orangeColor,
        title: MyRegularText(
            label: SC.bij.tr,
        style: Styles.white18W600,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
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
            Divider(
              thickness: 2,
              color: ColorConstant.orangeColor,
              endIndent: 5,indent: 5,),
            // SizedBox(height: 12.h),
          Expanded(
            child: ListView.builder(
              itemCount: controller.bijDates.length,
              itemBuilder: (context, index) {
                final item = controller.bijDates[index];
                return GestureDetector(
                  onTap: () {
                    controller.toggle(index);
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Date + Month
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              MyRegularText(
                                label: item['date'] ?? '',
                                style: Styles.black16W400,
                              ),
                              MyRegularText(
                                label: item['month'] ?? '',
                                style: Styles.black16W400,
                              ),
                            ],
                          ),

                          /// ONLY THIS PART REACTIVE
                          Obx(() => controller.expandedList[index]
                              ? Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 5.h,),
                            decoration: BoxDecoration(
                              color: ColorConstant.lightGreyColor,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Divider(),
                                MyRegularText(
                                  maxLines: 3,
                                  label: controller.bijMeanings[index],
                                  style: Styles.black14W400,
                                  align: TextAlign.start,
                                ),
                              ],
                            ),
                          )
                              : SizedBox()),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]
      ),
    ));
  }
}

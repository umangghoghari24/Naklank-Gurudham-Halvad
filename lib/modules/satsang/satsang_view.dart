import 'package:calender/utils/assets_path.dart';
import 'package:calender/utils/color_constants.dart';
import 'package:calender/utils/styles.dart';
import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/launcher.dart';
import '../../utils/string.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/app_icon_image.dart';
import 'satsang_controller.dart';

class SatsangView extends GetView<SatsangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
          backgroundColor: ColorConstant.orangeColor,
          title: MyRegularText(
            label: SC.satsang.tr,
          style: Styles.blackShade18_16W600,)),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              openYoutube(controller.channelUrl);
            },
            child: Card(
              margin: const EdgeInsets.all(12),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: ColorConstant.orangeColor,
                      size: 40,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyRegularText(
                            label: "NaklankGurudham Channel",
                            style: Styles.black16W600,
                          ),
                          SizedBox(height: 4.h),
                          MyRegularText(
                            label: "Tap to open & subscribe",
                            style: Styles.grey14W400,
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.notifications_active_outlined,),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: ColorConstant.orangeColor,
            endIndent: 15,indent: 15,),
          Card(
            margin: const EdgeInsets.all(12),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: AppIconImage(
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                      imagePath: AssetsPath.iconAarti,
                    ),
                  ),
                   SizedBox(width: 5.w),
                  Expanded(
                    child: MyRegularText(
                      label: "શ્રી દલસુખરામ બાપુ ની સંતવાણી",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.redColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: controller.satsangList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.play_circle_fill,
                      color: ColorConstant.orangeColor,
                      size: 30,
                    ),
                    title: MyRegularText(
                      label: controller.satsangList[index].title,
                      align: TextAlign.start,
                      style: Styles.black16W400,
                    ),
                    trailing: Icon(Icons.link),
                    onTap: () {
                      openYoutube(controller.satsangList[index].url);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}

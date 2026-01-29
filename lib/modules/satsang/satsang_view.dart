import 'package:calender/utils/color_constants.dart';
import 'package:calender/utils/styles.dart';
import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/launcher.dart';
import 'satsang_controller.dart';

class SatsangView extends GetView<SatsangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: MyRegularText(label: 'satang'.tr,
          style: Styles.black18_14W400,)),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: controller.links.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListTile(
              leading: Icon(
                Icons.play_circle_fill,
                color: ColorConstant.redColor,
                size: 30,
              ),
              title: MyRegularText(label: 'Dalsukh Bapu Stasang ${index + 1}',
              align: TextAlign.start,
              style: Styles.black16W400,),
              // subtitle: MyRegularText(label: 'Open in YouTube'),
              trailing: Icon(Icons.link),
              onTap: () {
                openYoutube(controller.links[index]); // direct YT
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:calender/utils/color_constants.dart';
import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../utils/string.dart';
import '../../utils/styles.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/app_icon_image.dart';
import 'gallery_controller.dart';
import 'gallery_detail_view.dart';
import 'gallery_model/gallery_data_model.dart';

class GalleryView extends GetView<GalleryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: MyRegularText(
          label: SC.gallery.tr,
      style: Styles.blackShade18_16W600,)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: controller.photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (context, index) {
            final item = controller.photos[index];

            return GestureDetector(
              onTap: () {
                Get.to(() => GalleryDetailView(photo: item));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     blurRadius: 3,
                  //     spreadRadius: 1,
                  //   )
                  // ],
                ),
                child: Column(
                  children: [
                    // IMAGE
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(11),
                          topRight: Radius.circular(11),
                        ),
                        child: Image.asset(
                          item.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // NAME AT BOTTOM
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        color: ColorConstant.greyDark,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(11),
                          bottomRight: Radius.circular(11),
                        ),
                      ),
                      child: MyRegularText(
                        label: item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        align: TextAlign.center,
                        style: Styles.white14W600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
